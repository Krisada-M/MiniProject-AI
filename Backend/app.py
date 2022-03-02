import json
import numpy as np
import pandas as pd
from flask import Flask, jsonify, request
from sklearn import preprocessing
from sklearn.tree import DecisionTreeClassifier
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_cors import CORS


app = Flask(__name__)
CORS(app)

# StartData

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:''@localhost/disease'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)
ma = Marshmallow(app)


class Disease(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Disease = db.Column(db.String(100))

    def __init__(self, Disease):
        self.Disease = Disease


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


class DiseaseSchema(ma.Schema):
    class Meta:
        fields = ('id', 'Disease')


class Symptom1Schema(ma.Schema):
    class Meta:
        fields = ('id', 'Symptom1')


class Symptom2Schema(ma.Schema):
    class Meta:
        fields = ('id', 'Symptom2')


class Symptom3Schema(ma.Schema):
    class Meta:
        fields = ('id', 'Symptom3')


class Symptom4Schema(ma.Schema):
    class Meta:
        fields = ('id', 'Symptom4')


class Symptom5Schema(ma.Schema):
    class Meta:
        fields = ('id', 'Symptom5')


Disease_schema = DiseaseSchema()
Symptom1_schema = Symptom1Schema(many=True)
Symptom2_schema = Symptom2Schema(many=True)
Symptom3_schema = Symptom3Schema(many=True)
Symptom4_schema = Symptom4Schema(many=True)
Symptom5_schema = Symptom5Schema(many=True)
# EndData


# Startcodejupiter

sk = preprocessing.LabelEncoder()

df = pd.read_csv(r'C:\Users\Haleruya\Desktop\Mini\back\Disease.csv')
Symptom1_en = sk.fit_transform(df.Symptom_1)
Symptom2_en = sk.fit_transform(df.Symptom_2)
Symptom3_en = sk.fit_transform(df.Symptom_3)
Symptom4_en = sk.fit_transform(df.Symptom_4)
Symptom5_en = sk.fit_transform(df.Symptom_5)
DiseaseRP = sk.fit_transform(df.Disease)
DiseaseEN = list(zip(Symptom1_en, Symptom2_en,
                     Symptom3_en, Symptom4_en, Symptom5_en))
model = DecisionTreeClassifier(criterion="entropy", splitter="random")
model = model.fit(DiseaseEN, DiseaseRP)
# EndCodejupiter
# Disease1 = np.array(Disease).tolist()


@app.route('/fetchdata', methods=['GET', 'POST'])
def data():

    Symptom1_all = Symptom1.query.all()
    Symptom2_all = Symptom2.query.all()
    Symptom3_all = Symptom3.query.all()
    Symptom4_all = Symptom4.query.all()
    Symptom5_all = Symptom5.query.all()

    S1 = Symptom1_schema.dump(Symptom1_all)
    S2 = Symptom2_schema.dump(Symptom2_all)
    S3 = Symptom3_schema.dump(Symptom3_all)
    S4 = Symptom4_schema.dump(Symptom4_all)
    S5 = Symptom5_schema.dump(Symptom5_all)
    return jsonify(S1, S2, S3, S4, S5)


@app.route('/fetchRP', methods=['GET', 'POST'])
def fetchRP():

    body = request.get_json()
    A = body[0]['A']
    B = body[0]['B']
    C = body[0]['C']
    D = body[0]['D']
    E = body[0]['E']

    diagnosis = model.predict([[A, B, C, D, E]])
    diagnosis1 = np.array(diagnosis).tolist()
    diagnosis2 = Disease.query.get(diagnosis1)
    DiseaseE = Disease_schema.jsonify(diagnosis2)
    return DiseaseE


if __name__ == "__main__":
    app.run(debug=True)
