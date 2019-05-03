import numpy as np
from pylab import *
import matplotlib.pyplot as plt

amazonData  = np.loadtxt('amazonOutput.txt')
aTeamData = np.loadtxt('aTeamOutput.txt')
boaData = np.loadtxt('boaOutput.txt')
facebookData = np.loadtxt('facebookOutput.txt')
googleData = np.loadtxt('googleOutput.txt')
groupMeData = np.loadtxt('groupMeOutput.txt')
slackData = np.loadtxt('slackOutput.txt')
stevensData = np.loadtxt('stevensOutput.txt')
uselessData = np.loadtxt('uselessOutput.txt')
wikiData = np.loadtxt('wikiOutput.txt')

X1 = np.sort(amazonData)
Y1 = 1. * arange(len(amazonData)) / (len(amazonData) - 1)
X2 = np.sort(aTeamData)
Y2 = 1. * arange(len(aTeamData)) / (len(aTeamData) - 1)
X3 = np.sort(boaData)
Y3 = 1. * arange(len(boaData)) / (len(boaData) - 1)
X4 = np.sort(facebookData)
Y4 = 1. * arange(len(facebookData)) / (len(facebookData) - 1)
X5 = np.sort(googleData)
Y5 = 1. * arange(len(googleData)) / (len(googleData) - 1)
X6 = np.sort(groupMeData)
Y6 = 1. * arange(len(groupMeData)) / (len(groupMeData) - 1)
X7 = np.sort(slackData)
Y7 = 1. * arange(len(slackData)) / (len(slackData) - 1)
X8 = np.sort(stevensData)
Y8 = 1. * arange(len(stevensData)) / (len(stevensData) - 1)
X9 = np.sort(uselessData)
Y9 = 1. * arange(len(uselessData)) / (len(uselessData) - 1)
X10 = np.sort(wikiData)
Y10 = 1. * arange(len(wikiData)) / (len(wikiData) - 1)


plt.plot(X1, Y1)
plt.plot(X2, Y2)
plt.plot(X3, Y3)
plt.plot(X4, Y4)
plt.plot(X5, Y5)
plt.plot(X6, Y6)
plt.plot(X7, Y7)
plt.plot(X8, Y8)
plt.plot(X9, Y9)
plt.plot(X10, Y10)

show()
