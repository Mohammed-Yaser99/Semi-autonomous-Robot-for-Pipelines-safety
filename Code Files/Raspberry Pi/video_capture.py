# Python program to explain cv2.imshow() method 
  
# importing cv2


from scipy.spatial import distance as dist
import numpy as np
import cv2
from imutils import perspective
from imutils import contours
import imutils
#from serial import Serial
import serial
import time

if __name__ == '__main__':
 ser = serial.Serial('/dev/ttyACM0', 9600, timeout=1)     #Open port with baud rate

# capture frames from a camera   
cap = cv2.VideoCapture(0)
  
pixelsPerMetric =3.139

def midpoint(ptA, ptB):
    return ((ptA[0] + ptB[0]) * 0.5, (ptA[1] + ptB[1]) * 0.5)

num=1


# loop runs if capturing has been initialized   
while (1):  
  
    # reads frames from a camera   
    ret, frame = cap.read()  
  
    # converting BGR to HSV   

    # Reading same image in another
    # variable and converting to gray scale.
    gray = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)
    gray = cv2.GaussianBlur(frame, (7, 7), 0)

    # canny fcn is used to detect the edges if the image has no edges it produce a
    # none image (black) , but if edges were detected in marks the edges with white color
    edges = cv2.Canny(gray, 0, 255)

    edges = cv2.dilate(edges, None, iterations=15)
    edges = cv2.erode(edges, None, iterations=15)

    # Display an original image
    cv2.imshow('Original', frame)  #uncomment to see the original window frame

    # discovers edges in the input image image and
    # marks them in the output map edges
    edges = cv2.Canny(frame, 100, 200)

    # Display edges in a frame
    cv2.imshow('Edges', edges)

    # image color check to see if edges exist after canny fcn
    if cv2.countNonZero(edges) == 0:
        print("Image has no edges")
    else:
        print("detected edges in the image")
        ser.write('q'.encode('utf-8'))
        time.sleep(1)
        # contourin the found edges
        (cnts, _) = cv2.findContours(edges.copy(), cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
        (cnts, _) = contours.sort_contours(cnts)

    count = 1
    # Going through every contours found in the image.
    for c in cnts:
        # if the contour is not sufficently large, ignore it
        if cv2.contourArea(c) < 100:
            continue

            # compute the rotated bounding box of the contour
        orig = frame.copy()
        box = cv2.minAreaRect(c)
        box = cv2.cv.BoxPoints(box) if imutils.is_cv2() else cv2.boxPoints(box)
        box = np.array(box, dtype="int")
        cv2.drawContours(orig, [box.astype("int")], -1, (0, 255, 0), 2)
        box = perspective.order_points(box)

        for (x, y) in box:
            cv2.circle(orig, (int(x), int(y)), 5, (0, 0, 255), -1)

        (tl, tr, br, bl) = box
        (tltrX, tltrY) = midpoint(tl, tr)
        (blbrX, blbrY) = midpoint(bl, br)

        (tlblX, tlblY) = midpoint(tl, bl)
        (trbrX, trbrY) = midpoint(tr, br)

        cv2.circle(orig, (int(tltrX), int(tltrY)), 5, (255, 0, 0), -1)
        cv2.circle(orig, (int(blbrX), int(blbrY)), 5, (255, 0, 0), -1)
        cv2.circle(orig, (int(tlblX), int(tlblY)), 5, (255, 0, 0), -1)
        cv2.circle(orig, (int(trbrX), int(trbrY)), 5, (255, 0, 0), -1)
        cv2.line(orig, (int(tltrX), int(tltrY)), (int(blbrX), int(blbrY)),
                     (255, 0, 255), 2)
        cv2.line(orig, (int(tlblX), int(tlblY)), (int(trbrX), int(trbrY)),
                     (255, 0, 255), 2)

        dA = dist.euclidean((tltrX, tltrY), (blbrX, blbrY))
        dB = dist.euclidean((tlblX, tlblY), (trbrX, trbrY))

        dimA = dA / pixelsPerMetric
        dimB = dB / pixelsPerMetric

        cv2.putText(orig, "D1 = {:.1f}mm".format(dimA),
                        (int(20), int(20)), cv2.FONT_HERSHEY_SIMPLEX,
                        0.65, (255, 100, 122), 2)
        cv2.putText(orig, "D2 = {:.1f}mm".format(dimB),
                        (int(20), int(50)), cv2.FONT_HERSHEY_SIMPLEX,
                        0.65, (255, 100, 122), 2)

        cv2.imwrite("frame%d.jpeg" %num,orig)  # save frame as JPEG file
        num += 1
    k = cv2.waitKey(5) & 0xFF
    if k == 27:
        break  # exit if Escape is hit# press for Esc key to stop  or close the window

# Close the window
cap.release()

# De-allocate any associated memory usage
cv2.destroyAllWindows()