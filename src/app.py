from flask import Flask, render_template, request, redirect, url_for, flash, session
from flask_mysqldb import MySQL
from flask_wtf.csrf import CSRFProtect
from flask_login import LoginManager, login_user, logout_user, login_required
import logging


from config import config

# Models:
from models.ModelUser import ModelUser

# Entities:
from models.entities.User import User

app = Flask(__name__)
app.secret_key = 'remis_america2023'
csrf = CSRFProtect()
db = MySQL(app)
login_manager_app = LoginManager(app)

# Configuración del logger
logging.basicConfig(level=logging.ERROR)  # Configura el nivel de log a ERROR o superior

# Crea una instancia de Logger
logger = logging.getLogger(__name__)


#manejo de usuarios
@login_manager_app.user_loader
def load_user(id):
    return ModelUser.get_by_id(db, id)
    


# ruta login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        user = User(0, request.form['username'], request.form['password'])
        logged_user = ModelUser.login(db, user)
        if logged_user != None:
            if logged_user.password:
                login_user(logged_user)
                return redirect(url_for('home'))
            else:
                flash("Invalid password...")
                return render_template('auth/login.html')
        else:
            flash("User not found...")
            return render_template('auth/login.html')
    else:
        return render_template('auth/login.html')


# ruta logout
@app.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('login'))


# ruta home
@app.route('/')
def index():
    return redirect(url_for('login'))


#ruta home
@app.route('/home')
def home():
    cur = db.connection.cursor()
    cur.execute("SELECT * FROM `viajes`")
    viajes = cur.fetchall()
    session['viajes'] = viajes
    cur.close()
    return render_template('home.html', viajes=viajes)


#método para ingresar nuevo cliente
@app.route('/ingresar_cliente',methods=['POST'])
def ingresar_cliente():
    if request.method == 'POST':
        try:
            nombre_apellido = request.form['NombreyApellido']
            domicilio = request.form['Domicilio']
            telefono = request.form['Telefono']
            cur = db.connection.cursor()
            cur.execute("INSERT INTO `clientes` (`nombre_apellido`, `domicilio`, `telefono`) VALUES (%s,%s,%s)",(nombre_apellido,domicilio,telefono))
            db.connection.commit()
            flash("Cliente registrado con éxito", "success")
            cur.close()
        except Exception as e:
            print("Error en la conexión", e)
            return render_template('ingresar_cliente.html')
    return render_template('home.html')


# método para buscar clientes en la base de datos
@app.route('/asignar', methods=['POST'])
def asignar():
    if request.method =='POST':
        try:    
            cliente = request.form['telefono']
            cur = db.connection.cursor()      
            cur.execute("SELECT `nombre_apellido`,`telefono` FROM `clientes` WHERE `telefono`= %(cliente)s", {"cliente":cliente})
            cliente = cur.fetchall()
            session['cliente'] = cliente 


            cur.execute("SELECT * FROM `choferes` WHERE `estado` IS NULL OR `estado`=0")# filtro los choferes con el estado = 0, es decir sin viajes
            choferes = cur.fetchall()


            cur.close()
            if not cliente:
                flash("No se ha encontrado el cliente...")
                return render_template('home.html')
            else:
                return render_template('viajes.html', cliente=cliente, choferes=choferes)
        except Exception as e:
            logger.error("Error en la conexión", str(e))
            print(e)
            return redirect(url_for('home'))
    return render_template('viajes.html')


# ruta viajes-BACK 
@app.route('/viajes', methods=['GET', 'POST'])
def viajes():
    choferes = []
    cliente_id = None
    cliente = None

    if request.method == 'POST':
        try:
            cliente = session.get('cliente')
            cliente_id = cliente[0][0]
            telefono_cliente = cliente[0][1]
         
            choferes = request.form.getlist('choferes')
            
            
            fecha = request.form['fecha']
            origen = request.form['origen']
            destino = request.form['destino']
            estado = True    

            cur = db.connection.cursor()
            
            cur.execute("INSERT INTO `viajes` (cliente, telefono, chofer, fecha, origen, destino, estado) VALUES (%(cliente_id)s, %(telefono)s,%(chofer)s, %(fecha)s, %(origen)s, %(destino)s, %(estado)s)", {"cliente_id": cliente_id, "telefono": telefono_cliente,"chofer": choferes, "fecha": fecha, "origen": origen, "destino": destino, "estado": estado})
            rowcount = cur.rowcount # chequeo si hubo una modificación (devulve números de filas afectadas)
            cur.execute("UPDATE `choferes` SET `estado`=1 WHERE `id` IN %s", (tuple(choferes),))  # Usa IN para actualizar múltiples choferes
            cur.connection.commit()
            # Obtener el ID del viaje insertado
            cur.execute("SELECT LAST_INSERT_ID()")  # Esto puede variar según la base de datos que estés utilizando
            viaje_id = cur.fetchone()[0]

            # Almacenar la información del viaje en la sesión usando un identificador único
            viaje_info = {'viaje_id': viaje_id, 'choferes': choferes}
            session[f'viaje_info_{viaje_id}'] = viaje_info

            cur.close()
            if rowcount > 0:
                flash("Viaje creado correctamente", "success")
                return redirect(url_for('home'))
            else:
                flash("Error en la creación del viaje")    
        except Exception as e:
            logger.error("Error en la conexión:%s", str(e))
            print(e)
            
            return redirect(url_for('home'))

    return render_template('viajes.html', cliente=cliente, choferes=choferes)



#ruta finalizar_viaje
@app.route('/finalizar_viaje', methods=['POST'])
def finalizar_viaje():
    viaje_id = request.form.get('viaje_id')  # Obtén el viaje_id del formulario
    chofer_id = request.form.get('chofer_id')  # Obtén el chofer_id del formulario

    viaje_info = session.get(f'viaje_info_{viaje_id}', [])
    
    if not viaje_info:
        return redirect(url_for('home'))
    
    choferes = viaje_info['choferes']

    estado = False

    cur = db.connection.cursor()
    cur.execute("UPDATE `viajes` SET `estado` = %s WHERE `id` = %s", (estado, viaje_id))
    
    # Asegúrate de que choferes sea un iterable, por ejemplo, una lista
    cur.execute("UPDATE `choferes` SET `estado`=0 WHERE `id`=%s", ([chofer_id],))
    
    cur.connection.commit()
    cur.close()

    # Eliminar la información del viaje de la sesión después de usarla
    session.pop(f'viaje_info_{viaje_id}', None)
        
    return redirect(url_for('home'))

    

#ruta nuevo cliente
@app.route('/nuevo_cliente', methods=['POST'])
def nuevo_cliente():
    return render_template('nuevo_cliente.html')


# ruta clientes historial
@app.route('/clientes')
def clientes():
    if True:
        try:
            cur = db.connection.cursor()
            cur.execute("SELECT * FROM `clientes` WHERE 1")
            listado_clientes = cur.fetchall()
        except Exception as e:
            flash("Error en la conexión" + str(e))
            return render_template('home.html')
    return render_template('clientes.html', listado_clientes=listado_clientes)


# ruta para completar base de datos de choferes
@app.route('/choferes', methods=['GET','POST'])
def choferes():
    listado_choferes = [] 
    if request.method == 'POST':
        try:
            nombre = request.form['nombre']
            apellido = request.form['apellido']
            cur = db.connection.cursor()
            cur.execute("INSERT INTO `choferes` (`nombre`, `apellido`) VALUES (%s,%s)", (nombre, apellido))
            cur.connection.commit()
            cur.close()
            flash("Chofer registrado con éxito", "success")
        except Exception as e:
            flash("Error en la conexión"+ str(e))
            return redirect(url_for('choferes'))
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM `choferes`")
        listado_choferes = cur.fetchall()
        cur.close()
    except Exception as e:
        flash("Error en la conexión: " + str(e))

    return render_template('choferes.html', listado_choferes=listado_choferes)



@app.route('/protected')
@login_required
def protected():
    return "<h1>Esta es una vista protegida, solo para usuarios autenticados.</h1>"

def status_401(error):
    return redirect(url_for('login'))


def status_404(error):
    return "<h1>Página no encontrada</h1>", 404


if __name__ == '__main__':
    app.config.from_object(config['development'])
    csrf.init_app(app)
    app.register_error_handler(401, status_401)
    app.register_error_handler(404, status_404)
    app.secret_key = 'B!1w8NAt1T^%kvhUI*S^'
    app.run()