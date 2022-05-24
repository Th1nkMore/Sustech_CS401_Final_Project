#! /usr/bin/env python

# import ros stuff
import rospy
import numpy as np
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf import transformations

import math

pub_ = None
regions_ = {
    'right': 0,
    'fright': 0,
    'front': 0,
    'fleft': 0,
    'left': 0,
}
state_ = 0
state_dict_ = {
    0: 'find the wall',
    1: 'turn left',
    2: 'follow the wall',
}

def maxDiff(a):
    vmin = a[0]
    dmax = 0
    for i in range(len(a)):
        if (a[i] < vmin):
            vmin = a[i]
        elif (a[i] - vmin > dmax):
            dmax = a[i] - vmin
    return dmax

def clbk_laser(msg):
    laser_range = np.array(msg.ranges)
    section = {
        # 'front': min(min(laser_range[10:20]),min(laser_range[350:360])),
        'front': min(laser_range[330:340]),
        'left': min(laser_range[60:80]),
        'right': min(laser_range[280:300]),
        'around':min(min(min(laser_range[280:300]),min(laser_range[330:340])),min(laser_range[60:80])),
    }
    
    # for i in range(360):
    #     print(str(i)+":"+str(laser_range[i]))

    # a = np.sort(-laser_range[70:100])
    # print(maxDiff(a))
    print('front:' + str(section['front'])+'; left:' + str(section['left'])+'; right:' + str(section['right']))
    # print('front:' + str(section['front'])+'; left:' + str(section['left'])+'; right:' + str(section['right'])+'; around:' + str(section['around']))


 
def main():
           
    rospy.init_node('reading_laser')
        
    sub = rospy.Subscriber('scan', LaserScan, clbk_laser)
        
    rate = rospy.Rate(20)

    rate.sleep()
    rospy.spin()

if __name__ == '__main__':
    main()