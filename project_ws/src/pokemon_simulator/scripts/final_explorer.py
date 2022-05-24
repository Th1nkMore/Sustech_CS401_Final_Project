#! /usr/bin/env python


from time import sleep
import rospy
import numpy as np
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
from math import pi

pub = rospy.Publisher("cmd_vel", Twist, queue_size=10)
velocity_msg = Twist()
follow_dir = -1

section = {
    'front': 0,
    'left': 0,
    'right': 0,
}

state_ = 0

state_dict_ = {
    0: 'Back up',
    1: 'Turn right',
    2: 'Follow the wall',
    3: 'Turn left',
}
'''
This block contains all the functions designed to execute the navigation process.
Function: Change_state: This function gets information about the state of robot based on the distance from
                        from obstacle and changes the state of robot.
Argument: state:{Type: Integer} This parameter is used to get the required action set for thr robot.
                0 - 'Back up',      
                1 - 'turn right',
                2 - 'Follow the wall',
                3 - 'turn left',
                
'''


def change_state(state):
    global state_, state_dict_
    if state is not state_:
        print('State of Bot - [%s] - %s' % (state, state_dict_[state]))
        state_ = state


'''
Function: callback_laser: This function gets information about LaserScan Data from the sensor and has the conditions set
                          to change the state of robot based on the distance from the obstacle.
                          
                          LaserScan data is transferred in the numpy array to retrieve it more efficiently.
                          
                          I have used numpy min() inbuilt function to get LaserScan values between 0-40 degrees for left
                          side, 70-110 for centre/front side, and 140-180 degrees for right. 
                          
                          Once the callback_laser is called in subscriber it will initiate the bug_action block.
                          
Argument: msg: {Type: ranges}: This parameter gets sensor_msgs for LaserScan.
'''


def callback_laser(msg):
    global section

    laser_range = np.array(msg.ranges)
    section = {
        # 'front': min(min(laser_range[0:10]),min(laser_range[350:360])),
        'front': min(laser_range[330:340]),
        'left': min(laser_range[60:80]),
        'right': min(laser_range[280:300]),
        'around':min(laser_range[280:300]),
    }
    bug_action()


'''
Function: bug_action: This function uses a global function to set the direction or wall to follow. When the variable 
                      follow_dir == -1, the wall follower will reset. When follow_dir == 0, the robot is set to follow 
                      left wall, and when the follow-dir == 1, robot is set to follow the right wall. 
                      
                      Based on the global variable, once a wall is selected the algorithm to follow that particular wall
                      is implemented. 
'''


def bug_action():
    global follow_dir

    b = 0.6  # maximum threshold distance
    a = 0.23  # minimum threshold distance
    velocity = Twist()  # Odometry call for velocity

    rospy.loginfo("follow_direction {f}".format(f=follow_dir))  # This will indicate the direction of wall to follow.

    if section['front'] > b and section['left'] > b and section['right'] > b:  # Loop 1
        change_state(2)
        rospy.loginfo("Reset Follow_dir")
    elif section['front'] < a or section['left'] < a or section['right'] < a:
        change_state(0)
        rospy.loginfo("Too Close")
    elif follow_dir == -1:  # To set the direction of wall to follow
        if section['left'] > b:
            follow_dir = 0
            rospy.loginfo("following left wall")
        else:
            change_state(2)
            rospy.loginfo("follow direction not set")
    elif section['front'] < a or section['left'] < a or section['right'] < a:
        change_state(0)
        rospy.loginfo("Too Close")
    else:
        rospy.loginfo("Running")

    if follow_dir == 0:  # Algorithm for left wall follower
        if section['left'] > b:
            change_state(3)
        elif section['left'] < b and section['front'] > a:
            change_state(2)
        elif section['left'] < a and section['front'] < a:
            change_state(1)
        elif section['front'] < a or section['left'] < a or section['right'] < a:
            change_state(0)
            rospy.loginfo("Too Close")
        else:
            rospy.loginfo("follow left wall is not running")


'''
Function: find_wall: This function publishes linear and angular velocities for backing up.
'''


def back_up():
    # rospy.loginfo('following wall...')
    velocity = Twist()
    velocity.linear.x = -0.1
    velocity.angular.z = 0
    return velocity


'''
Function: turn_left:  This function publishes linear and angular velocities for turning left.
'''


def turn_left():
    # rospy.loginfo('turning left...')
    velocity = Twist()
    velocity.linear.x = 0
    velocity.angular.z = 1.82
    return velocity


'''
Function: turn_right:  This function publishes linear and angular velocities for turning right.
'''


def turn_right():
    # rospy.loginfo('turning right...')
    velocity = Twist()
    velocity.linear.x = 0
    velocity.angular.z = -1.82
    return velocity


'''
Function: move_ahead:  This function publishes linear and angular velocities for moving straight.
'''


def move_ahead():
    # rospy.loginfo('moving ahead...')
    velocity = Twist()
    velocity.linear.x = 0.2
    velocity.angular.z = 0
    return velocity


'''
Function: check: This function publishes velocity values for the logic based on the states.
'''


def check():
    global pub

    rospy.init_node('follow_wall')
    rospy.Subscriber('scan', LaserScan, callback_laser)

    while not rospy.is_shutdown():

        velocity = Twist()
        if state_ == 0:
            velocity = back_up()
            for _ in range(4):
                pub.publish(velocity)
                sleep(0.25)
        elif state_ == 1:
            velocity.linear.x = 0.2
            velocity.angular.z = 0
            for _ in range(8):
                pub.publish(velocity)
                sleep(0.25)
            velocity = turn_right()
            for _ in range(4):
                pub.publish(velocity)
                sleep(0.25)
            velocity.linear.x = 0.2
            velocity.angular.z = 0
            for _ in range(8):
                pub.publish(velocity)
                sleep(0.25)
            velocity.linear.x = 0
            velocity.angular.z = 0
            pub.publish(velocity)
            
        elif state_ == 2:
            velocity = move_ahead()
        elif state_ == 3:
            velocity.linear.x = 0.2
            velocity.angular.z = 0
            for _ in range(8):
                pub.publish(velocity)
                sleep(0.25)
            velocity = turn_left()
            for _ in range(4):
                pub.publish(velocity)
                sleep(0.25)
            velocity.linear.x = 0.2
            velocity.angular.z = 0
            for _ in range(8):
                pub.publish(velocity)
                sleep(0.25)
            velocity.linear.x = 0
            velocity.angular.z = 0
            pub.publish(velocity)
        else:
            rospy.logerr('Unknown state!')

        pub.publish(velocity)

    rospy.spin()


if __name__ == "__main__":
    check()