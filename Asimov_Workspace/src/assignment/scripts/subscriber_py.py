#! /usr/bin/env python
import rospy
from std_msgs.msg import String

def callBackFun1(msg):
    rospy.loginfo('Message received on topic /text1: ' + msg.data)
    f = open('text1.txt','a+')
    f.write(msg.data + '\n')

def callBackFun2(msg):
    rospy.loginfo('Message received on topic /text2: ' + msg.data)
    f = open('text2.txt','a+')
    f.write(msg.data + '\n')

if __name__ == '__main__':
    rospy.init_node('subscriber')
    sub1 = rospy.Subscriber('/text1', String, callBackFun1)
    sub2 = rospy.Subscriber('/text2', String, callBackFun2)
    rospy.spin()