from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager


# Initializes all the necessary constants


app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///test.db"
app.config["SECRET_KEY"] = "8cd915737e1a8bf31079eacbb0b8be67"


db = SQLAlchemy()
login_manager = LoginManager()

db.init_app(app)

bcrypt = Bcrypt(app)
login_manager.init_app(app)
login_manager.login_view = "login"
