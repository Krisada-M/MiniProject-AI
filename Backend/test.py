import pandas as pd
from sklearn import preprocessing
from sklearn.tree import DecisionTreeClassifier

sk = preprocessing.LabelEncoder()
df = pd.read_csv(r'C:\Users\Haleruya\Desktop\Mini\back\Disease.csv')
print(df.to_string()) 

Symptom1_en = sk.fit_transform(df.Symptom_1)
print ("Symptom1 :",Symptom1_en,)

Symptom2_en = sk.fit_transform(df.Symptom_2)
print ("Symptom2 :",Symptom2_en)

Symptom3_en = sk.fit_transform(df.Symptom_3)
print ("Symptom3 :",Symptom3_en)

Symptom4_en = sk.fit_transform(df.Symptom_4)
print ("Symptom4 :",Symptom4_en)

Symptom5_en = sk.fit_transform(df.Symptom_5)
print ("Symptom5 :",Symptom5_en)
Disease = sk.fit_transform(df.Disease)
print ("Disease :",Disease)

DiseaseEN = list(zip(Symptom1_en,Symptom2_en,Symptom3_en,Symptom4_en,Symptom5_en))
DiseaseEN

model = DecisionTreeClassifier(criterion="entropy" , splitter="random")
model = model.fit(DiseaseEN,df.Disease)
model

A = 3
B = 15
C = 10
D = 3
E = 20
diagnosis = model.predict([[A,B,C,D,E]])

print("species : ",diagnosis)