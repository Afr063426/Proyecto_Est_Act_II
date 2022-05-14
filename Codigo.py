from numpy import linspace
import pandas as pd
from tabulate import tabulate

file="SouthGermanCredit.asc"
data=pd.read_csv(file," ")
print(tabulate(data))

x_axis = [0:10]
y_axis = [0:20]
plot(x_axis,y_axis)
