import cv2
from cv2 import threshold
img = cv2.imread("/home/ljy/pokemon_ws/src/pokemon_catching/pokemon_caught/BW_cropped.png")     
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)                  
blurred = cv2.GaussianBlur(gray, (5, 5), 0)
value, threshold = cv2.threshold(blurred,60,255,cv2.THRESH_BINARY_INV)
cnts, hierarchy = cv2.findContours(threshold, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
cnt = cnts[0]
x,y,w,h = cv2.boundingRect(cnt)
cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
cv2.imshow("test",img)  
cv2.waitKey(0)