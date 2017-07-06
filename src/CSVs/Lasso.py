# noticed that when the training set is not enough in size or good enough to represent test set, performance of the model might be very low.
# beware of the training/testing dataset preparation: it will be stored in the same csv file, and will be accessed by cutting the arrays of the matrix for training and testing within the code; as done here.
# The landmarks of the face borders contribute little in the task of puppetteering; thus hope that Lasso will set their coefficients very low~zero in building the model as they have little correlation to the facial expressions/muscles in work which result less effect on predicting the shape keys.
print(__doc__)

from time import time
from scipy import sparse
from scipy import linalg

from sklearn.datasets.samples_generator import make_regression
from sklearn.linear_model import Lasso
from sklearn.linear_model import Ridge

# using all the 136 parameters for a single model proved more accurate. (89% VS 84%)
# Plan-B to handle less model wise represented data is to prepare another second model for each shape key (atleast important ones) and train them on data that keeps them low. The first models should be trained on data that shows movement of that particular shape key. 
# the criteria to push the landmarks to either of the models of for a given shape key would be based on how the few/relevant landmarks scored in the normalized data. There will be a set of selected landmarks(important ones) for all shape keys and also a threshold of values.
# For example in the 'ddxy.csv' file (which is a combination of browsup and eyeblink data) for the 'BrowU_C' shape key where the eyebrows have most, almost all of the values of the landmarks are negative. Thus making sure of the landmarks are negative would be decide on whether the given data is more appropriate either for the first landmark or the second one.

def normalize(pts):
    return np.subtract(pts, pts.mean(axis=0))/abs(2*pts.mean(axis=0))*1000 # division by .002 *pts_mean so that numbers face size (or a factor whicd depends on the distance of the face from the screen)

x = numpy.loadtxt('' + "browsup_eyeblink_x.csv", delimiter=",", skiprows=0)
y = numpy.loadtxt('' + "browsup_eyeblink_y.csv", delimiter=",", skiprows=0)
x_normalized = normalize(x)
y_normalized = normalize(y)

numpy.savetxt('' + "ddx.csv", xx, delimiter=",", skiprows=0)
numpy.savetxt('' + "ddy.csv", yy, delimiter=",", skiprows=0)
# merge manually this two csvs to a new csv file caled ddxddy.csv

#Then load ddxddy.csv
ddxy = numpy.loadtxt('' + "ddxddy.csv", delimiter=",", skiprows=0)
fs = numpy.loadtxt('' + "fs_browsup_eyeblink.csv", delimiter=",", skiprows=0)
alpha = 0.1
ridge = Ridge(alpha = alpha)
ridge.fit(ddxy[100:450], fs[100:450])
ridge.score(ddxy[0:100], fs[0:100])
ridge.score(ddxy[450:595], fs[450:595])

ridge.predict(ddxy[0:100])
ridge.predict(ddxy[450:595])

dlib_y = numpy.loadtxt('' + "browsup_.csv", delimiter=",", skiprows=1)

print("--- Dense matrices")

X, y = make_regression(n_samples=200, n_features=5000, random_state=0)
X_sp = sparse.coo_matrix(X)

alpha = 0.1
sparse_lasso = Lasso(alpha=alpha, fit_intercept=False, max_iter=1000)
dense_lasso = Lasso(alpha=alpha, fit_intercept=False, max_iter=1000)

t0 = time()
sparse_lasso.fit(X_sp[0:150], y[0:150])
print("Sparse Lasso done in %fs" % (time() - t0))

t0 = time()
dense_lasso.fit(X[0:150], y[0:150])
print("Dense Lasso done in %fs" % (time() - t0))

print("Distance between coefficients : %s"
      % linalg.norm(sparse_lasso.coef_ - dense_lasso.coef_))

# to see how the models perform on the rest of the data (test data)
sparse_lasso.score(X[150:200], y[150:200])
dense_lasso.score(X[150:200], y[150:200])

# also to see prediction only
sparse_lasso.predict(x[150:200])
dense_lasso.predict(x[150:200])

import numpy
a = numpy.asarray([ [1,2,3], [4,5,6], [7,8,9] ])
numpy.savetxt("foo.csv", a, delimiter=",")

dlib_normal = (dlib_browsup-np.min(dlib_browsup))/(np.max(dlib_browsup)-np.min(dlib_browsup))

# data normalization

from sklearn.preprocessing import scale
X = scale( X, axis=0, with_mean=True, with_std=True, copy=True )


def normalize(pts):
    return np.subtract(pts, pts.mean(axis=0))

#Normalize points according to their mean point
def normalize(pts):
    return np.subtract(pts, pts.mean(axis=0))*.002*pts.mean(axis=0) # (2 * pts mean )/1000. By the way the division by 1000 is just to keep the pts mean values which mostly tend to be in the 3 digit numbers between 0 and 1. 







# normalize values to between 0 and 1
# Example Data
x = sample(-100:100, 50)

#Normalized Data
normalized = (x-min(x))/(max(x)-min(x))



# another example
import os
import pandas as pd
import numpy as np
import matplotlib.pylab as plt
from sklearn.cross_validation import train_test_split
from sklearn.linear_model import LassoLarsCV
from sklearn import preprocessing

model=LassoLarsCV(cv=10, precompute=False).fit(X[0:150],y[0:150])

model.score(X[150:200], y[150:200])

model.predict(X[150:200])
