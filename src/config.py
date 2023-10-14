class config:
    SECRET_KEY = 'B!1w8NAt1T^%kvhUI*S^'

class DevelopmentConfig(config):
    DEBUG = True
    MYSQL = 'localhost'
    MYSQL_USER = 'root'
    MYSQL_PASSWORD = ''
    MYSQL_DB = 'remis_america'

config = {
    'development': DevelopmentConfig
}