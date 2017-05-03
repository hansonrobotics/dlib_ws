#!/usr/bin/env python
import math
import rospy
import rospkg
import json
from dynamic_reconfigure.server import Server
from dlib_puppeteering.cfg import DLIBConfig
from pau2motors.MapperFactory import Quaternion2EulerYZX
from std_msgs.msg import Float32
from pau2motors.msg import pau


class dlib_mapper():
    d = {}

    def __init__(self):
        self.parameters = {}
        # Current modes for publisher that could be combined by addition
        self.modes={
            'head_yaw': 1,
            'head_pitch': 2, # Currently not supprted by API to control yaw and pitch separately
            'head_roll': 4,
            'eyes': 8,
            'face': 16,
        }
        rospy.init_node("dlib_puppeteering_mapper", anonymous = True)
        path = rospkg.RosPack().get_path('dlib_puppeteering')
        shape_key_pairing = '%s/sophia/shapekey_pairing.json' % path
        global d
        with open(shape_key_pairing) as json_data:
            d = json.load(json_data)
            # print "value\n", d
        srv = Server(DLIBConfig, self.callback)

        rospy.Subscriber("/blender_api/dlib_values", pau, self.publisher)

        self.pub_pau = rospy.Publisher('/blender_api/set_pau', pau, queue_size=10)

        self.quoternion2euler = {
            'p': Quaternion2EulerYZX({'axis': 'x'}, None),
            'y': Quaternion2EulerYZX({'axis': 'y'}, None),
            'r': Quaternion2EulerYZX({'axis': 'z'}, None),
        }
        rospy.spin()

    def callback(self, config, level):
        self.parameters = config
        return config

    def publisher(self,shapekeys):
        '''
        :param shapekeys: Holds the values of the DlibSvalue which holds the head pose(translation and rotation(in quatrenion) and eye_left and right with vector3 data for gaze and DlibShapekeys to hold
         the blendhsape values from the system.
        :return:
        '''
        # dict_shape={}
        # Eyes Up/down
        io = shapekeys.m_shapekeys.index("eyeBlinkLOR")
        ic = shapekeys.m_shapekeys.index("eyeFlareLOR")
        eyes_up = shapekeys.m_coeffs[io]
        eyes_down = shapekeys.m_coeffs[ic]
        eye_angle = eyes_down * 20 - eyes_up * 25
        head_pau = pau()
        head_pau.m_headRotation = shapekeys.m_headRotation
        head_pau.m_eyeGazeLeftPitch = eye_angle
        head_pau.m_eyeGazeLeftYaw = shapekeys.m_eyeGazeLeftYaw
        head_pau.m_eyeGazeRightPitch = eye_angle
        head_pau.m_eyeGazeRightYaw = shapekeys.m_eyeGazeRightYaw

        # For iterating over the shapekeys
        # for i in shapekeys.keys.shapekey:
        #     dict_shape[i.name]= i.value

        if (bool(self.parameters)):
            for i in d:
                dlib_name = i
                #pub_shape= DlibShapekey()

                value = 0
                name= i.replace("-","").replace(".","")
                values= self.parameters['groups']['groups'][name]['parameters']

                #Check a list of items.
                if bool(values):
                    #pub_shape.name= dlib_name

                    for parameter in values:
                        sk= parameter.replace(name+"_","")
                        # this below doesn't work as it is the past values. The current values is
                        # value = value + (values[parameter]) * dict_shape[sk]
                        # if 'JAW' in dlib_name:
                           # rospy.loginfo(values[parameter])
                        index= shapekeys.m_shapekeys.index(sk)
                        value = value + (self.parameters[parameter]) * shapekeys.m_coeffs[index]
                    head_pau.m_shapekeys.append(dlib_name)
                    head_pau.m_coeffs.append(max(0,min(1,value)))
        else:
            rospy.loginfo("Problem")

        self.pub_pau.publish(head_pau)

if __name__ == "__main__":
    mapper= dlib_mapper()
