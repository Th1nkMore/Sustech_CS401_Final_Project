import cv2
import numpy as np
import os

def getContours(img):
    contours, hierarchy = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)

    for cnt in contours:
        area = cv2.contourArea(cnt)
        # print("Area: ",area)
        if area>500:
            cv2.drawContours(imgContour, cnt, -1, (255,0,0), 3)
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
  

#convert to black and white

img = cv2.imread('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/image3.png')
# lower = np.array([60,60,60])  #-- Lower range --
# upper = np.array([255,255,255])  #-- Upper range --
# mask = cv2.inRange(img, lower, upper)
# res = cv2.bitwise_and(img, img, mask= mask)  #-- Contains pixels having the gray color -- 
for i in range(60,256):
    img[np.all(img==(i,i,i), axis=-1)] = (255,255,255)

cv2.imshow('Result',img) 
cv2.waitKey(0)





