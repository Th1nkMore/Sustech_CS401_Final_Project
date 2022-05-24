#!/usr/bin/env python
# -*- coding: utf-8 -*

from math import fabs
import rospy, time
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

def scan_callback(msg):
    global range_front
    global range_right
    global range_left
    global ranges
    global min_front, i_front, min_right, i_right, min_left, i_left
    ranges = msg.ranges

    range_front[:5] = msg.ranges[5:0:-1]
    range_front[5:] = msg.ranges[-1:-5:-1]
    range_right = msg.ranges[300:345]
    range_left = msg.ranges[60:15:-1]

    min_range, i_range = min((ranges[i_range], i_range) for i_range in range(len(ranges)))
    min_front, i_front = min((range_front[i_front], i_front) for i_front in range(len(range_front)))
    min_right, i_right = min((range_right[i_right], i_right) for i_right in range(len(range_right)))
    min_left, i_left = min((range_left[i_left], i_left) for i_left in range(len(range_left)))

range_front = []
range_right = []
range_left = []
min_front = 0
i_front = 0
min_right = 0
i_right = 0
min_left = 0
i_left = 0
cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
scan_sub = rospy.Subscriber('scan', LaserScan, scan_callback)
rospy.init_node('maze_explorer')

command = Twist()
command.linear.x = 0.0
command.angular.z = 0.0
rate = rospy.Rate(10)
time.sleep(1)

cnt = 0
turning = False
near_wall = 0
print("Turning...")
command.angular.z = 0
command.linear.x = 0
cmd_vel_pub.publish(command)
time.sleep(2)
while not rospy.is_shutdown():
    while (near_wall == 0 and not rospy.is_shutdown()):
        command.angular.z = 0
        command.linear.x = 0
        if not turning:
            if (min_front > 0.3 or (min_front < 50 and cnt == 0)):
                command.angular.z = 0
                command.linear.x = 0.15
            else:
                command.angular.z = 0
                command.linear.x = 0
            if min_front > 50:
                cnt += 1
        cmd_vel_pub.publish(command)
        
        if (min_front < 0.3 or min_left < 0.3 or min_right < 0.3):
            turning = True
            print("front = " + str(min_front) + "   left = " + str(min_left) + "   right = " + str(min_right))
            if min_front < 0.3:
                print("Condition front")
                if (min_left > 0.3 and min_left < 50):
                    print("Condition 1")
                    command.angular.z = 1.2
                    command.linear.x = 0.0
                elif (min_right > 0.3 and min_right < 50):
                    print("Condition 2")
                    command.angular.z = -1.2
                    command.linear.x = 0.0
                elif min_left > 0.3 and min_left < 50 and min_right > 0.3 and min_right < 50 and min_left > min_right:
                    print("Condition 3")
                    command.angular.z = 1.2
                    command.linear.x = 0.0
                elif min_right > 0.3 and min_right < 50 and min_left > 0.3 and min_left < 50 and min_left < min_right:
                    print("Condition 4")
                    command.angular.z = -1.2
                    command.linear.x = 0.0          
                else:
                    print("Condition 7")
                    command.angular.z = 0
                    command.linear.x = -0.15
                cmd_vel_pub.publish(command)
            elif min_left < 0.3:
                print("Condition left")
                command.angular.z = -1.2
                command.linear.x = 0.0
                cmd_vel_pub.publish(command)
            elif min_right < 0.3:
                print('Condition right')
                command.angular.z = 1.2
                command.linear.x = 0.0
                cmd_vel_pub.publish(command)
        else:
            turning = False
        while (min_front < 0.2 and not rospy.is_shutdown()):
            pass
    rate.sleep()