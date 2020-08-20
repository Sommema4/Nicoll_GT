import numpy as np
from scipy.optimize.minpack import curve_fit
import matplotlib.pyplot as plt 
import pandas as pd 

filename = "/home/user/git/Gerdien-tube/bt-readout/ttyUSB0.txt"
filename = "/home/user/git/Gerdien-tube/bt-readout/ttyUSB1.txt"
data = pd.read_csv(filename, sep='\t') 

data = data.iloc[:,3]
data_mean_minute = data.rolling(60).mean()
data_mean_ten_minute = data.rolling(600).mean()

plt.plot(data_mean_minute, '-')
plt.plot(data_mean_ten_minute, '-')
plt.show()
