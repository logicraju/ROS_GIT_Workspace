#!/usr/bin/env python
import rospy
from std_msgs.msg import String
if __name__ == '__main__':
    rospy.init_node('practice_node')
    rospy.loginfo('Node starting ...')
    rate = rospy.Rate(2)
    pub = rospy.Publisher('/random_topic1',String,queue_size=10)
    msg = String()
    while(not rospy.is_shutdown()):
        msg = 'Hello World 1 !'
        pub.publish(msg)
        rate.sleep()
    rospy.loginfo('Exiting node ...')
