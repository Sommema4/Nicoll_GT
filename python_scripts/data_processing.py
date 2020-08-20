import numpy as np
from scipy.optimize.minpack import curve_fit
import matplotlib.pyplot as plt

def exp_decay(xdata, a, b):
    return a * np.exp(-xdata/b)

path = "gerdien_tube.log"
#path = "hc05.txt"
data = open(path).readlines() # open a file and save its content to list
data = list(map(lambda s: s.strip(), data))

print(data[:5])

log_name = data[1] # first line contains name, date and time
data = np.array(data[1:]) # data

searchval = 'reset'
index = np.where(data == searchval) # finds index of each reset
index = index[0]
slices = np.split(data, index[1:])

out_neg, out_pos = [], []

for slice in slices:
	slice = slice[1:]
	y_neg = slice[0::2].astype(np.float)
	y_pos = slice[1::2].astype(np.float)
	x_neg = np.linspace(1, len(y_neg), len(y_neg))
	x_pos = np.linspace(1, len(y_pos), len(y_pos))
	popt_neg, pcov = curve_fit(exp_decay, x_neg, y_neg)
	popt_pos, pcov = curve_fit(exp_decay, x_pos, y_pos)
	out_neg.append(1 / popt_neg[1])
	out_pos.append(1 /popt_pos[1])
	#print(popt)
	'''	
	plt.plot(x_neg, y_neg, '.', x_neg, exp_decay(x_neg, *popt_neg), '-')
	plt.pause(5)
	plt.close()
	'''
plt.plot(out_neg)
#plt.plot(out_pos)
plt.show()

