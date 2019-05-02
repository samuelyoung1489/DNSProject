import numpy as np
from pylab import *
import matplotlib.pyplot as plt

data  = np.loadtxt('amazonOutput.txt')

X = np.sort(data)
Y  = 1. * arange(len(data)) / (len(data) - 1)

plot(X, Y)

show()
