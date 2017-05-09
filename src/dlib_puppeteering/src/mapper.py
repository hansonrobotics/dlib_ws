#!/usr/bin/env python
import sys
import rospy

import roslib
import cv2

from pau2motors.msg import pau
from dlib_puppeteering.msg import lm_points
roslib.load_manifest('dlib_puppeteering')
import numpy as np
import random

class dlib_puppeteering:

  # declare publishers, subscribers, and other important static variables
  def __init__(self):

    self.dlibX = []
    self.dlibY = []
    self.dlibFaceIndex = []

    self.indexes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]  # shapekey indexes tobe mapped

    self.pub_pau = rospy.Publisher('/blender_api/set_pau', pau, queue_size=10)
    self.image_sub = rospy.Subscriber("/dlib_values", lm_points, self.dlib_callback)

    self.blendshape_names = ['brow_center_UP', 'brow_center_DN', 'brow_inner_UP.L', 'brow_inner_DN.L', 'brow_inner_UP.R',
                          'brow_inner_DN.R', 'brow_outer_UP.L', 'brow_outer_DN.L', 'brow_outer_up.R', 'brow_outer_DN.R',
                          'eye-flare.UP.L', 'eye-blink.UP.L', 'eye-flare.UP.R', 'eye-blink.UP.R', 'eye-blink.LO.L',
                          'eye-flare.LO.L', 'eye-blink.LO.R', 'eye-flare.LO.R', 'wince.L', 'wince.R', 'sneer.L',
                          'sneer.R', 'eyes-look.dn', 'eyes-look.up', 'lip-UP.C.UP', 'lip-UP.C.DN', 'lip-UP.L.UP',
                          'lip-UP.L.DN', 'lip-UP.R.UP', 'lip-UP.R.DN', 'lips-smile.L','lips-smile.R', 'lips-wide.L',
                          'lips-narrow.L', 'lips-wide.R', 'lips-narrow.R', 'lip-DN.C.DN', 'lip-DN.C.UP', 'lip-DN.L.DN',
                          'lip-DN.L.UP', 'lip-DN.R.DN', 'lip-DN.R.UP', 'lips-frown.L', 'lips-frown.R','lip-JAW.DN']
  
  # callback: gets relative distance of DLIB's land marks per their corresponding shapekey
  def dlib_callback(self, data):

          self.dlibX = data.dlib_X
          self.dlibY = data.dlib_Y
          self.dlibFaceIndex = data.dlib_face_index

          # x = np.array(self.dlibX)
          # y = np.array(self.dlibY)
          # z = np.column_stack((x, y))

          head_pau = pau()

          head_pau.m_headRotation.x = 0.9
          head_pau.m_headRotation.y = 0.5
          head_pau.m_headRotation.z = 0.7
          head_pau.m_headRotation.w = 0.9

          head_pau.m_headTranslation.x =0.9
          head_pau.m_headTranslation.y =0.7
          head_pau.m_headTranslation.z =0.8

          head_pau.m_neckRotation.x= -0.9
          head_pau.m_neckRotation.y= -0.5
          head_pau.m_neckRotation.z= 0.5
          head_pau.m_neckRotation.w= 0.9

          head_pau.m_eyeGazeLeftPitch = 0.01
          head_pau.m_eyeGazeLeftYaw = 0.1
          head_pau.m_eyeGazeRightPitch = 0.01
          head_pau.m_eyeGazeRightYaw = 0.1

          head_pau.m_shapekeys = self.blendshape_names
          head_pau.m_coeffs = self.doMapping()

          self.pub_pau.publish(head_pau) # publish to "/blender_api/set_pau"

  def doMapping(self):
      blendshape_values = []

      for i in range(0,45): # modify this block to include the machine learning approach
          if i in self.indexes:
              random_val= random.random() # generate some random values between 0 and 1
              blendshape_values.append(random_val)
          else:
              blendshape_values.append(0.0)
      return blendshape_values

  def normalize(pts):
      return np.subtract(pts, pts.mean(axis=0))

def main(args):
  rospy.init_node('dlib2blender_mapper', anonymous=True)
  dlib_puppeteering()
  try:
      rospy.spin()
  except KeyboardInterrupt:
      print("Dlib-Puppeteering Exiting...")
  cv2.destroyAllWindows()

if __name__ == '__main__':
  main(sys.argv)







