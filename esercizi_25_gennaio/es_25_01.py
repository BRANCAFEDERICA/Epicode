import pandas as pd
import numpy as np


wine = pd.read_csv("wine.csv")

# andiamo a vedere le dimensioni
dim = wine.shape
print("Le righe sono: ", dim[0], ",", "le colonne sono: ", dim[1])

print(wine.columns)

statistics = wine.describe()
print(statistics)

#nelle statistiche, aggiungo anche i valori qualitativi
qualitative_stat = wine.describe(include='object')

print(qualitative_stat)

'''
#conteggio= wine.count(axis=0)
#print(conteggio)

#conteggio1 = wine.count(axis=0)
#print(conteggio1)

# calcolo la media della colonna qualità
mean_df = wine["quality"].mean()

# calcolo il max e il minimo
mass_df = wine["quality"].max()
minimo_df = wine["quality"].min()

# stampo il risultato utile ai fini statistici
print("In media la qualità del vino è di: ", mean_df, "punti, con un punteggio massimo di", mass_df, "e minimo di", minimo_df)

# calcolo la moda della colonna qualità
moda_df = wine["quality"].mode()
print(moda_df)


# faccio un'analisi sulla base del vino (rosso e bianco)
vini = wine["type"].value_counts()
print (vini)

tipo_vino = wine["type"].describe()
print(tipo_vino)
'''






