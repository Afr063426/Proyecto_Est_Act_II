import pandas as pd
from tabulate import tabulate

file="SouthGermanCredit.asc"
data=pd.read_csv(file," ")
print(tabulate(data))

#hola

# Todo bien?

#si
