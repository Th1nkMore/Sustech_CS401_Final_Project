#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, RegionOfInterest
from cv_bridge import CvBridge, CvBridgeError
 
class pokemonDetector:
    def __init__(self):
        rospy.on_shutdown(self.cleanup);
 
        self.bridge = CvBridge()
        # init the publisher
        self.image_pub = rospy.Publisher("cv_bridge_image", Image, queue_size=1)
 
        # init the subscriber, can be remapped in launch file
        self.image_sub = rospy.Subscriber("/kinect/rgb/image_raw", Image, self.image_callback, queue_size=1)
    
    def image_callback(self, data):
        # convert the ros image to opencv form
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
            
        except CvBridgeError as e:
            print (e)

        # get Origin image
        cv2.imwrite('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/cv_img.png',cv_image)
        Originimg = cv2.imread('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/cv_img.png')
        # convert origin image into gray
        img = Originimg.copy()
        for i in range(90,130):
            img[np.all(img==(i,i,i), axis=-1)] = (255,255,255)
        imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        (thresh, imageBlackWhite) = cv2.threshold(imgGray, 240, 255, cv2.THRESH_BINARY)
        # convert origin image into black and white
        cv2.imwrite('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png',imageBlackWhite)
        imageBlackWhite = cv2.imread('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png')
        imgGray = cv2.cvtColor(imageBlackWhite, cv2.COLOR_BGR2GRAY)
        imgBlur = cv2.GaussianBlur(imgGray, (7,7), 1)
        imgCanny = cv2.Canny(imgBlur,50,50)
        # judge if there are pokemon
        if judge(imgCanny):
            x,y,w,h=getContours(imgCanny)
            cv2.rectangle(cv_image, (x,y), (x+w,y+h), (0,0,255), 2)
            cv2.rectangle(Originimg, (x,y), (x+w,y+h), (0,0,255), 2)
            cropped_image = imageBlackWhite[y:y+h, x:x+w]
            cv2.imwrite("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png",cropped_image)
            cropped_image = cv2.imread("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png")
            gray = cv2.cvtColor(cropped_image, cv2.COLOR_BGR2GRAY)                  
            blurred = cv2.GaussianBlur(gray, (5, 5), 0)
            value, threshold = cv2.threshold(blurred,60,255,cv2.THRESH_BINARY_INV)
            cnts, hierarchy = cv2.findContours(threshold, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            for i in range(len(cnts)):
                cnt = cnts[i]
                x_,y_,w_,h_ = cv2.boundingRect(cnt)
                if w_/h_<=2 and w_>60 and h_>60:
                    cv2.rectangle(cv_image,(x+x_,y+y_),(x+x_+w_,y+y_+h_),(0,255,0),2)
                    flag = True
                    break
                else:
                    flag = False
            # cv2.rectangle(cv_image,(x+x_,y+y_),(x+x_+w_,y+y_+h_),(0,255,0),2)
        else:        
            pass
        frame = np.array(cv_image, dtype=np.uint8)
        self.image_pub.publish(self.bridge.cv2_to_imgmsg(frame, "bgr8"))
 
    def cleanup(self):
        print ("Shutting down vision node.")
        cv2.destroyAllWindows()
def getContours(img):
    contours, hierarchy = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
    for cnt in contours:
        area = cv2.contourArea(cnt)

        if area>500:
            cv2.drawContours(img, cnt, -1, (255,0,0), 3)
            perimeter = cv2.arcLength(cnt, True)
            print("Perimeter: ", perimeter)
            approx = cv2.approxPolyDP(cnt, 0.02*perimeter, True)
            print("Corner Points: ", len(approx))
            objCorner = len(approx)
            x,y,w,h = cv2.boundingRect(approx)

            if objCorner==4:
                aspectRatio = float(w)/float(h)
                if aspectRatio > 0.95 and aspectRatio < 1.05:
                    objectType = 'Square'
                else:
                    objectType = "Rectangle"
            else:
                objectType = "None"

            cv2.rectangle(img, (x,y), (x+w,y+h), (0,0,255), 2)
        return x,y,w,h
def judge(img):
    contours, hierarchy = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
    for cnt in contours:
        area = cv2.contourArea(cnt)

        if area>500:
            cv2.drawContours(img, cnt, -1, (255,0,0), 3)
            perimeter = cv2.arcLength(cnt, True)
            print("Perimeter: ", perimeter)
            approx = cv2.approxPolyDP(cnt, 0.02*perimeter, True)
            print("Corner Points: ", len(approx))
            objCorner = len(approx)
            x,y,w,h = cv2.boundingRect(approx)

            if objCorner==4:
                aspectRatio = float(w)/float(h)
                if aspectRatio > 0.95 and aspectRatio < 1.05:
                    objectType = 'Square'
                    return True
                else:
                    objectType = "Rectangle"
                    return True
            else:
                return False
if __name__ == '__main__':
    try:
        rospy.init_node("pokemon_detector")
        
        rospy.loginfo("pokemon_detector node is started...")
        rospy.loginfo("Please subscribe the ROS image.")
        pokemonDetector()
        rospy.spin()
    except KeyboardInterrupt:
        print ("Shutting down motion detector node.")
        cv2.destroyAllWindows()