import pandas as pd
from tabulate import tabulate

file='german.data'
data=pd.read_csv(file,' ')
print(tabulate(data))