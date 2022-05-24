#! /usr/bin/env python

# import ros stuff
import time
import rospy
import numpy as np
from geometry_msgs.msg import Twist
def main():
    global pub       
    rospy.init_node('reading_laser')
        
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

        
    velocity = Twist()
    velocity.linear.x = 0
    velocity.angular.z = -1.7
    for _ in range(4):
        pub.publish(velocity)
        time.sleep(0.35)
    velocity.linear.x = 0
    velocity.angular.z = 0
    pub.publish(velocity)


if __name__ == '__main__':
    main()