
from datasets import load_dataset
dataset = load_dataset("mstz/heart_failure")

import numpy as np
data= Dataset ({
    'features': [
    'age',
        'has_anaemia',
        'creatinine_phosphokinase_concentration_in_blood',
        'has_diabetes',
        'heart_ejection_fraction',
        'has_high_blood_pressure',
        'platelets_concentration_in_blood',
        'serum_creatinine_concentration_in_blood', 
        'serum_sodium_concentration_in_blood',
        'is_male', 'is_smoker',
        'days_in_study',
        'is_dead'
    ],
    'num_rows': 299
})

# Acceder a la columna de edades
edades = data['age']

# Convertir la lista de edades a un arreglo de NumPy
edades_np = np.array(edades)

# Calcular el promedio de edades
promedio_edades = np.mean(edades_np)

# Imprimir el resultado
print("El promedio de edad de las personas participantes en el estudio es:"