# Project Report

[TOC]



## Background

### Environment

`Ubuntu20.04 + ROS Noetic + Python3.8.2 + OpenCV4.5.5	`	

### Purpose

1. Implement auto driving and exploration within 3~7 minutes
2. Auto identification (detect and grab naughty pokemon in a maze)
3. (bonus) Multiple robots

### Judging Standard 

#### General:

![image-20220524181935167](image/image-20220524181935167.png)

#### Time:

## ![image-20220524181900720](image/image-20220524181900720.png)

### Function

| Function               | Done | Improvement |
| ---------------------- | ---- | ----------- |
| Auto exploration       | Yes  |             |
| Pokemon Identification | Yes  | Accuracy    |
| Pokemon grab           | Yes  |             |
| Multi-robots           | No   |             |

## Modules

### Exploration

### Pokemon Identification

To solve the pokemon identification problem, we have mainly two method. 

One is based on learning model. For example, we can choose YOLO to train our model to detect and identify pokemon.

The other is to solve by pure OpenCV method.

But whatever, we have to firstly determine when to indentify. We don’t want to find pokemon in any time since our pokemon only appears in the pictures.

An image with proper picture to catch may look like this:

![image-20220526170342661](image/image-20220526170342661.png)

An image with proper picture to catch may look like this:

<img src="image/image-20220526170451096.png" alt="image-20220526170451096" style="zoom:200%;" />

Our first task is to determine whether it is a proper time to catch pokemon and crop the picture if it is.

#### 1. Rectangle detection and Crop the desiring area

We can detect the picture by the property that it has white background.

We convert the photo that comes from our robot to Black and White.

With our example:

![image-20220526171039500](image/image-20220526171039500.png)

![image-20220526171109180](image/image-20220526171109180.png)

Then, we just need to find the proper rectangle.

![image-20220526172503789](image/image-20220526172503789.png)

<img src="image/image-20220526172534692.png" alt="image-20220526172534692" style="zoom:150%;" />

Obviously, we hope the x and y of the rectangle to be close. And we don’t want small x and y since there may be some small rectangles that don’t meet our expectation.

Once the rectangle satisfies our requirements, we store it’s coordinates(in order to mark in the origin image) and crop it.

![image-20220526173107537](image/image-20220526173107537.png)

#### 2. detect the pokemon

And then we can detect pokemon easily with OpenCV method. But I also tried YOLO method. 

Labelled some pokemon pictures using `labelImg`. 

<img src="image/image-20220410195258691.png" alt="image-20220410195258691" style="zoom:50%;" />

Due to the limit of my computer(darknet doesn’t support gpu speed up for amd), I appointed my friend to train the model. And here are some results he returned to me:

![image-20220526175830979](image/image-20220526175830979.png)

![image-20220526175850338](image/image-20220526175850338.png)

![image-20220526175925081](image/image-20220526175925081.png)

It runs properly in origin dataset. But when it comes to a picture with pokemon in a complex environment, it works awful:

![image-20220526175801342](image/image-20220526175801342.png)

Maybe I should prepare a more colourful dataset. But whatever, I just test it to satisfy my curiosity.

I will choose the pure OpenCV method to finish my project for better result.

In the first step, we have get the black and white image of the picture. Then it’s easy to  addressed with in fact. We just call the `boundingRect()` function.

 ![image-20220526180548637](image/image-20220526180548637.png)

#### 3. Combine and congratulation!

Then we will have this:

####  ![image-20220526180656026](image/image-20220526180656026.png)

More testing examples: 

![image-20220526180745720](image/image-20220526180745720.png)

![image-20220526180803473](image/image-20220526180803473.png)



## reference list

OpenCV Contours: https://docs.opencv.org/4.5.5/d3/d05/tutorial_py_table_of_contents_contours.html

Wall follower algorithm and PID control: https://github.com/juandpenan/turtlebot3_wall_follower

OpenCV tutorial for saving Images:

http://opencv-python-tutroals.readthedocs.org/en/latest/py_tutorials/py_gui/py_image_display/py_image_display.html















































