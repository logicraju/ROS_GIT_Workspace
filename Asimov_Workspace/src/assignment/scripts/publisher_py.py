#! /usr/bin/env python
import rospy
from std_msgs.msg import String
if __name__ == '__main__':
    rospy.init_node('publisher')
    pub1 = rospy.Publisher('/text1', String, queue_size=10)
    pub2 = rospy.Publisher('/text2', String, queue_size=10)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        msg = String()
        msg.data = 'Hello World !'
        pub1.publish(msg)
        pub2.publish(msg)
        rate.sleep()
