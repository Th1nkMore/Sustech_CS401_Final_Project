import cv2
import os


def getContours(img):
    contours, hierarchy = cv2.findContours(img, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)

    for cnt in contours:
        area = cv2.contourArea(cnt) # This is used to find the area of the contour.
        print("Area: ",area)
        if area>500: # The areas below 500 pixels will not be considered
            cv2.drawContours(imgContour, cnt, -1, (255,0,0), 3) # -1 denotes that we need to draw all the contours
            perimeter = cv2.arcLength(cnt, True) # The true indicates that the contour is closed
            print("Perimeter: ", perimeter)
            approx = cv2.approxPolyDP(cnt, 0.02*perimeter, True) # This method is used to find the approximate number of contours
            print("Corner Points: ", len(approx))
            objCorner = len(approx)
            x,y,w,h = cv2.boundingRect(approx) # In this we get the values of our bounding box that we will draw around the object

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
  
img = cv2.imread('/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_photo/image3.png')
imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
  
(thresh, imageBlackWhite) = cv2.threshold(imgGray, 108, 255, cv2.THRESH_BINARY)
cv2.imwrite('/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_photo/BW.png',imageBlackWhite)
img2 = cv2.imread('/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_photo/BW.png')
# img2 = imageBlackWhite.copy()
imgGray = cv2.cvtColor(img2, cv2.COLOR_BGR2GRAY)
imgBlur = cv2.GaussianBlur(imgGray, (7,7), 1)
imgCanny = cv2.Canny(imgBlur,50,50)
os.remove('/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_photo/BW.png')
imgContour = img2.copy()

x,y,w,h=getContours(imgCanny)
cv2.rectangle(img, (x,y), (x+w,y+h), (0,0,255), 2)
cropped_image = img2[y:y+h, x:x+w]
cv2.imwrite("/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png",cropped_image)
img3 = cv2.imread("/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png")
os.remove("/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png")     
gray = cv2.cvtColor(img3, cv2.COLOR_BGR2GRAY)                  
blurred = cv2.GaussianBlur(gray, (5, 5), 0)
value, threshold = cv2.threshold(blurred,60,255,cv2.THRESH_BINARY_INV)
cnts, hierarchy = cv2.findContours(threshold, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
cnt = cnts[0]
x_,y_,w_,h_ = cv2.boundingRect(cnt)
# cv2.rectangle(img,(255,100),(10,10),(0,255,0),2)
cv2.rectangle(img,(x+x_,y+y_),(x+x_+w_,y+y_+h_),(0,255,0),2)
print(x,y,h,w)
print(x_,y_,h_,w_)
cv2.imwrite("/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_caught/pokemon_caught.png", img)

cv2.waitKey(0)