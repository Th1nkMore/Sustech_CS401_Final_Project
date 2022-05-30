#! /usr/bin/python
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import time
from datetime import datetime

bridge = CvBridge()

def image_callback(msg):
    print("Received an image!")
    try:
        time.sleep(2)
        cv2_img = bridge.imgmsg_to_cv2(msg, "bgr8")
    except CvBridgeError as e:
        print(e)
    else:
        now = datetime.now()
        current_time = now.strftime("%H:%M:%S")
        dir = '/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/my_image' +current_time +'.png'
        cv2.imwrite(dir, cv2_img)
        time.sleep(2)
        print("Take a break")
    

def main():
    rospy.init_node('image_listener')

    image_topic = "/kinect/rgb/image_raw"

    rospy.Subscriber(image_topic, Image, image_callback)

    rospy.spin()

if __name__ == '__main__':
    main()