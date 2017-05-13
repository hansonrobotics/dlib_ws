import numpy
def fileopen():
    fs = numpy.loadtxt('' + "fs_browsup_eyeblink.csv", delimiter=",", skiprows=0)
    print(fs)

fileopen()
