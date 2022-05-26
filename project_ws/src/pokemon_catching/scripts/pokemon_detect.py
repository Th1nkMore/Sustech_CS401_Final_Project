import cv2
import os
from cv2 import threshold

count = 0

def getContours(img, imgContour):
    contours, hierarchy = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
    x,y,w,h = [0,0,0,0]
    for cnt in contours:
        area = cv2.contourArea(cnt)
        # print("Area: ",area)
        if area>500:
            cv2.drawContours(imgContour, cnt, -1, (255,0,0), 3)
            perimeter = cv2.arcLength(cnt, True)
            # print("Perimeter: ", perimeter)
            approx = cv2.approxPolyDP(cnt, 0.02*perimeter, True)
            # print("Corner Points: ", len(approx))
            objCorner = len(approx)
            x,y,w,h = cv2.boundingRect(approx)

            if objCorner==4:
                aspectRatio = float(w)/float(h)
                if aspectRatio > 0.95 and aspectRatio < 1.05:
                    objectType = 'Square'
                else:
                    objectType = "Rectangle"
                cv2.rectangle(img, (x,y), (x+w,y+h), (0,0,255), 2)
                return x,y,w,h
        return x,y,w,h

def pokemon_detect():
    # imgOrigin = cv2.imread("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/my_image.png") 
    imgOrigin = cv2.imread("/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/image3.png")  
    imgGray = cv2.cvtColor(imgOrigin, cv2.COLOR_BGR2GRAY)
    (thresh, imageBlackWhite) = cv2.threshold(imgGray, 108, 255, cv2.THRESH_BINARY)
    cv2.imwrite('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png',imageBlackWhite)
    imageBlackWhite = cv2.imread('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png')
    imgGray = cv2.cvtColor(imageBlackWhite, cv2.COLOR_BGR2GRAY)
    imgBlur = cv2.GaussianBlur(imgGray, (7,7), 1)
    imgCanny = cv2.Canny(imgBlur,50,50)
    # os.remove('/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_catching/pokemon_photo/BW.png')
    x,y,w,h=getContours(imgCanny, imageBlackWhite)
    return x,y,w,h

if __name__ == "__main__":
    x,y,w,h = pokemon_detect()
    if(w>50 and h >50):
        count+=1
    print(count)