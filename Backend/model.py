from app import db


class Disease(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    disease = db.Column(db.String(100))

    def __init__(self, disease):
        self.disease = disease


class Symptom1(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Symptom1 = db.Column(db.String(100))

    def __init__(self, Symptom1):
        self.Symptom1 = Symptom1


class Symptom2(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Symptom2 = db.Column(db.String(100))

    def __init__(self, Symptom2):
        self.Symptom2 = Symptom2


class Symptom3(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Symptom3 = db.Column(db.String(100))

    def __init__(self, Symptom3):
        self.Symptom3 = Symptom3


class Symptom4(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Symptom4 = db.Column(db.String(100))

    def __init__(self, Symptom4):
        self.Symptom4 = Symptom4


class Symptom5(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Symptom5 = db.Column(db.String(100))

    def __init__(self, Symptom5):
        self.Symptom5 = Symptom5
