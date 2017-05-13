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
import models_coeffs_intercepts.py as coeffs_inter

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

from models_coeffs_intercepts import *

'''coeff_brows_up = ([-0.03994529,  0.05965983,  0.26604942, -0.10001976,  0.02571235,
       -0.15743366, -0.15107966,  0.05932797, -0.04445027, -0.00051184,
       -0.01794235,  0.08205211, -0.02737744, -0.04503058,  0.00097107,
        0.03430173,  0.00135388,  0.12086409,  0.24367876,  0.12423624,
        0.12427326, -0.12390761,  0.16738411, -0.03294159, -0.02225945,
       -0.09150146, -0.05671128,  0.00994966, -0.0041362 ,  0.11825082,
       -0.07925411, -0.08126947, -0.05907555, -0.09782393,  0.04432068,
       -0.0397211 , -0.09751762, -0.17953067,  0.06043592,  0.10127657,
        0.02658325, -0.07335536, -0.21000558,  0.04144996, -0.01290343,
        0.06514291,  0.00780998,  0.01651065,  0.19827989, -0.00394886,
        0.00552164, -0.20197584,  0.02243605, -0.0724711 , -0.15828425,
        0.00535809,  0.10761565, -0.02992744,  0.07518744,  0.13417684,
        0.00995507,  0.08043928,  0.14559729, -0.07282683, -0.01328051,
        0.0701037 ,  0.01477559,  0.0152705 , -0.14343098,  0.15201524,
       -0.14463469,  0.02412382,  0.0697816 ,  0.00741937,  0.00819093,
       -0.03161338, -0.11183878, -0.00521626, -0.0349472 ,  0.08937093,
        0.02370157,  0.05277089, -0.0681871 ,  0.02369042, -0.05190085,
        0.05925793,  0.1404831 ,  0.05088367, -0.29246621, -0.09831926,
       -0.10359141, -0.04927141, -0.04304857,  0.18312706,  0.13543494,
       -0.18588968, -0.02794997, -0.13353171, -0.00807263, -0.1083353 ,
        0.12407571,  0.02983456,  0.16133227, -0.15397156, -0.12894383,
       -0.08374003, -0.03608447, -0.03653539, -0.08866398, -0.05310818,
       -0.08937821,  0.03761951,  0.13386111, -0.11045425,  0.03025596,
        0.047111  ,  0.060447  , -0.01068462,  0.0219471 , -0.01606329,
        0.14224367,  0.16036216, -0.03929058,  0.06096333, -0.06239731,
        0.07814062,  0.07903677,  0.10244747,  0.04471812, -0.04535393,
        0.01450537,  0.01261773,  0.0079287 , -0.09126498,  0.00105649,
       -0.10070298])
coeff_brows_up = numpy.array(coeff_brows_up)

intercept_brows_up = 0.24949174560098603'''
#instantiate empty Ridge model object
browsup_model = Ridge(alpha = alpha)
# Create model for brows up via direct copying of coefficients and intercepts
browsup_model.coeff_ = coeff_brows_up
browsup_model.intercept_ = intercept_brows_up
#here put dlib input in a numpy array format (assuming they are normlized too)
dlib_landmarks = numpy.array(dlib_landmarks)
predicted_brows_up = browsup_model.predict(dlib_landmarks)




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
