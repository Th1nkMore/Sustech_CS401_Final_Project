#!/usr/bin/env python
# -*- coding: utf-8 -*-

import imp
import roslib;
import rospy
import actionlib
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, PoseWithCovarianceStamped, Point, Quaternion, Twist
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

rospy.init_node('move_test', anonymous=True)

move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)

































