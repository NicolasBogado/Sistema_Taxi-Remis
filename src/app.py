from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from flask_wtf.csrf import CSRFProtect
from flask_login import LoginManager, login_user, logout_user, login_required
#from flask_caching import Cache

from config import config

# Models:
from models.ModelUser import ModelUser

# Entities:
from models.entities.User import User

app = Flask(__name__)
# Configuración de Flask-Caching para desactivar la caché
#app.config['CACHE_TYPE'] = 'null'  # Desactivar la caché
#cache = Cache(app)
csrf = CSRFProtect()
db = MySQL(app)
login_manager_app = LoginManager(app)

#manejo de usuarios
@login_manager_app.user_loader
def load_user(id):
    return ModelUser.get_by_id(db, id)

# ruta home
@app.route('/')
def index():
    return redirect(url_for('login'))

# ruta login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # print(request.form['username'])
        # print(request.form['password'])
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
#ruta home
@app.route('/home')
def home():
    return render_template('home.html')

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
            cur.execute("SELECT `telefono` FROM `clientes` WHERE `telefono`= %(cliente)s", {"cliente":cliente})
            cliente = cur.fetchone()
            cur.close()
            if cliente is None:
                flash("No se ha encontrado el cliente...")
                return render_template('home.html')
            else:
                return render_template('asignar.html')
        except Exception as e:
            flash("Error en la conexión" + str(e))
            return render_template('home.html')
    return render_template('home.html')

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
        print(listado_choferes)
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