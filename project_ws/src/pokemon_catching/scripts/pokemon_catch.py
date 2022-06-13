import cv2
import numpy as np


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
imgOrigin = cv2.imread('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/my_image.png')
img = imgOrigin.copy()
for i in range(90,130):
    img[np.all(img==(i,i,i), axis=-1)] = (255,255,255)
# imgGray = cv2.cvtColor(imgOrigin, cv2.COLOR_BGR2GRAY)
imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
(thresh, imageBlackWhite) = cv2.threshold(imgGray, 245, 255, cv2.THRESH_BINARY)
# cv2.imshow('test1',imageBlackWhite)
# cv2.waitKey(0)
cv2.imwrite('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png',imageBlackWhite)
imageBlackWhite = cv2.imread('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png')
imgGray = cv2.cvtColor(imageBlackWhite, cv2.COLOR_BGR2GRAY)
imgBlur = cv2.GaussianBlur(imgGray, (7,7), 1)
imgCanny = cv2.Canny(imgBlur,50,50)
# os.remove('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png')
imgContour = imageBlackWhite.copy()
# cv2.imshow('test1',imgContour)
# cv2.waitKey(0)
x,y,w,h=getContours(imgCanny)

cv2.rectangle(imgOrigin, (x,y), (x+w,y+h), (0,0,255), 2)
cropped_image = imageBlackWhite[y:y+h, x:x+w]
cv2.imwrite("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png",cropped_image)
cropped_image = cv2.imread("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png")
# os.remove("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png")     
gray = cv2.cvtColor(cropped_image, cv2.COLOR_BGR2GRAY)                  
blurred = cv2.GaussianBlur(gray, (5, 5), 0)
value, threshold = cv2.threshold(blurred,60,255,cv2.THRESH_BINARY_INV)
cnts, hierarchy = cv2.findContours(threshold, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
for i in range(len(cnts)):
    cnt = cnts[i]
    x_,y_,w_,h_ = cv2.boundingRect(cnt)
    if w_/h_<=2 and w_>60 and h_>60:
        cv2.rectangle(imgOrigin,(x+x_,y+y_),(x+x_+w_,y+y_+h_),(0,255,0),2)
        print(w_,h_)
        flag = True
        break
    else:
        flag = False

# cv2.rectangle(imgOrigin,(x+x_,y+y_),(x+x_+w_,y+y_+h_),(0,255,0),2)
cv2.imwrite("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_caught/pokemon_caught.png", imgOrigin)
cv2.imshow('test',imgOrigin)
cv2.waitKey(0)