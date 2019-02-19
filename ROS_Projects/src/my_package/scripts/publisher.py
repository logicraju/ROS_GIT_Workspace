#!/usr/bin/env python
from std_msgs.msg import String
import rospy
if __name__ == '__main__':
    rospy.init_node('publisher_node')
    pub = rospy.Publisher('/random_topic',String,queue_size=10)
    rate = rospy.Rate(2)
    while not rospy.is_shutdown():
        msg = String()
        msg.data = 'Hello !'
        pub.publish(msg)
        rate.sleep()
    rospy.loginfo('Node killed. Program terminating ...')
    