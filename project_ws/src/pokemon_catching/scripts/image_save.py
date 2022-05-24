#! /usr/bin/python
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import time

bridge = CvBridge()

def image_callback(msg):
    print("Received an image!")


    try:
        cv2_img = bridge.imgmsg_to_cv2(msg, "bgr8")
    except CvBridgeError as e:
        print(e)
    else:
        dir = '/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/my_image.png'
        cv2.imwrite(dir, cv2_img)
        time.sleep(5)
        print("Take a break")
    

def main():
    rospy.init_node('image_listener')
    # Define your image topic
    image_topic = "/kinect/rgb/image_raw"
    # Set up your subscriber and define its callback
    rospy.Subscriber(image_topic, Image, image_callback)
    # Spin until ctrl + c
    rospy.spin()

if __name__ == '__main__':
    main()