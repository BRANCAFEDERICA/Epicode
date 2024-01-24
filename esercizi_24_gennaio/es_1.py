import numpy as np

mat = [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9], [10, 11, 12, 13, 14]]
#per accedere alla prima lista
print(mat[0])

#per accedere alle ultime due liste
print (mat[:2])

#per accedere ad elementi specifici all'interno delle liste
print(mat[0][3])

# trasformo la lista in un array
mat = np.array(mat)
print(mat)

#recupero elementi dall'array
print(mat[0]) # per accedere alla prima lista
print(mat[0,1]) # per accedere al valore all'indice 1 nella prima lista
print(mat[:]) # per prendere tutte le righe
print(mat[:,1]) # per prendere gli elementi che si trovano all'indice 1 di tutte le righe 
print(mat[2,1]) # per stampare il valore presente nella 3 riga e nell'indice 1

# metodo reshape
linear_data = np.array([x for x in range(27)])
print(linear_data)

reshaped_data = linear_data.reshape((3,3,3))
print(reshaped_data)

print(reshaped_data.shape) # è una matrice con dimensioni 3x3
print(reshaped_data.size) # racconta le dimensioni

# problema dei ripetti
print(np.linspace(0, 28.75, 15))

# creare ndarray
# primo metodo
mat = np.array([[1, 1, 1, 1] , [5, 1, 1, 1] , [20, -4, 0, 42]])
print(type(mat))

print(mat)

# metodo casting
li = [[1, 1, 1, 1],[5,1,1,1],[20,-4,0,42]]
mat_2 = np.array(li)
print(mat_2)

#creiamo ndarray 5x5, 
#per ogni valore sottriamo il minimo (2) 
#e poi dividiamo il risultato per il massimo (42) meno il minimo

arr = np.array([[10, 22, 21, 8, 9],
                [9, 42, 3, 18, 11],
                [5, 4, 30, 12, 29],
                [37, 31, 7, 2, 26],
                [8, 6, 4, 33, 15]])

print(arr)

result_arr = (arr - arr.min()) / (arr.max() - arr.min())
print(result_arr)
