from sqlalchemy.orm import Mapped, mapped_column, relationship
from init import db, app, login_manager
from sqlalchemy import ForeignKey
from flask_login import UserMixin
from io import BytesIO
from functions import return_file_from_binary


@login_manager.user_loader
def load_user(user_id):
    """Loads the current_user"""
    return User.query.get(int(user_id))


# Classes to initialize tables. ORMs.


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    password = db.Column(db.String(120), nullable=False)
    is_creator = db.Column(db.Boolean, nullable=True)
    posts = db.relationship("Posts", backref="user", lazy=True)
    uploaded_music_files = db.relationship("MusicFiles", backref="user", lazy=True)
    returned_music_files = db.relationship("ReturnFiles", backref="user", lazy=True)


class Posts(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(120), nullable=False)
    content = db.Column(db.Text, nullable=True)
    file_name = db.Column(db.String(120), nullable=True)
    file_data = db.Column(db.LargeBinary, nullable=True)
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)


class MusicFiles(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    file_name = db.Column(db.String(120), nullable=False)
    file_data = db.Column(db.LargeBinary, nullable=False)
    file_extension = db.Column(db.String(20), nullable=False)
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)


class ReturnFiles(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(120), nullable=False)
    file_name = db.Column(db.String(120), nullable=True)
    file_data = db.Column(db.LargeBinary, nullable=True)
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), nullable=False)


if __name__ == "__main__":
    with app.app_context():
        db.create_all()
        # db.session.commit()
        # user = User(
        #     username="John", email="johndoe@gmail.com", password="1234", is_creator=True
        # )
        # db.session.add(user)
        # db.session.commit()
        # posts = Posts(title="Title 1", content="Blah Blah", user_id=user.id)
        # musicfiles = MusicFiles(title="File 1", user_id=user.id)
        # returnfiles = ReturnFiles(title="File 2", user_id=user.id)
        # db.session.add(posts)
        # db.session.add(musicfiles)
        # db.session.add(returnfiles)
        # db.session.commit()
        # file_b = MusicFiles.query.filter_by(title="hehe").first()
        # file_acutal = return_file_from_binary(file_b.file_data)
        # with open("temp.jpg", "wb") as f1:
        #     bytesio_object = BytesIO(file1.file_data)
        #     f1.write(bytesio_object.getbuffer())

        # print(User.query.filter_by(email="sdfsdf").all())
