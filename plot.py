import numpy as np
from pylab import *
import matplotlib.pyplot as plt

boaData = np.loadtxt('boaOutput.txt')
slackData = np.loadtxt('slackOutput.txt')
stevensData = np.loadtxt('stevensOutput.txt')
wikiData = np.loadtxt('wikiOutput.txt')


X1 = np.sort(boaData)
Y1 = 1. * arange(len(boaData)) / (len(boaData) - 1)
X2 = np.sort(slackData)
Y2 = 1. * arange(len(slackData)) / (len(slackData) - 1)
X3 = np.sort(stevensData)
Y3 = 1. * arange(len(stevensData)) / (len(stevensData) - 1)
X4 = np.sort(wikiData)
Y4 = 1. * arange(len(wikiData)) / (len(wikiData) - 1)


plt.plot(X1, Y1, color='red', label = 'Bankofamerica.com')
plt.plot(X2, Y2, color= 'blue', label = 'Slack.com')
plt.plot(X3, Y3, color= 'green', label = 'Stevens.edu')
plt.plot(X4, Y4, 'r--', label = 'Wikipedia.com')
plt.legend(fontsize = 20, loc = 'lower right')


plt.title('Relative Popularity of Websites',fontsize=25)
plt.xlabel('Time Between Query', fontsize=25)
plt.ylabel('CDF',fontsize=25)
plt.xticks(fontsize = 20)
plt.yticks(fontsize = 20)

show()
