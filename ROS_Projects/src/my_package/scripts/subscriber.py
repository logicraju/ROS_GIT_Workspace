#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callbackFn(msg):
    rospy.loginfo('Message received: ' + str(msg))

if __name__ == '__main__':
    rospy.init_node('subscriber')
    sub = rospy.Subscriber('/random_topic',String, callbackFn)
    rospy.spin()