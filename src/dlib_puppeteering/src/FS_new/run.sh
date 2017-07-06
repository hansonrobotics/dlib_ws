#!/bin/bash
source ~/head/devel/setup.bash 
roslaunch faceshift_puppeteering faceshift_puppeteering.launch
mv ~/.ros/example.csv $1
