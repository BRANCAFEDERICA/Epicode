import pandas as pd

iris = pd.read_csv ("iris.data", names = ["sepal length","sepal width","petal length","petal width","class"])
#print (iris)

print(iris.columns)
print(iris.head(6))
