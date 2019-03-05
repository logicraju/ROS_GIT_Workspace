#! /usr/bin/env python
import rospy
from assignment.srv import calc_service

if __name__ == '__main__':
    rospy.init_node('calc_client')

    while not rospy.is_shutdown():
        rospy.wait_for_service('/calculator')
        try:
            calc_srv = rospy.ServiceProxy('/calculator', calc_service)
            print('Enter number 1: ')
            num1 = int(raw_input())
            print('Enter number 2: ')
            num2 = int(raw_input())
            print('Enter operator ID (0 = +, 1 = -, 2 = *, 3 = /, 4 = ^): ')
            operator_id = int(raw_input())
            response = calc_srv(num1, num2, operator_id)
            rospy.loginfo('Result: ' + str(response.result))
        except rospy.ServiceException as e:
            rospy.loginfo('Service interrupted: ' + str(e))