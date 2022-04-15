import pandas as pd
from tabulate import tabulate

file= german.data
data=pd.read_excel('german.data.xlsx')
print(tabulate(data))