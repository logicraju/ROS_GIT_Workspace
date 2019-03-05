#!/usr/bin/env python
import rospy
from assignment.srv import calc_service

def callBackFun(req):
    if(req.operator_id == 0):
        return(req.num1+req.num2)
    elif(req.operator_id == 1):
        return(req.num1-req.num2)
    elif(req.operator_id == 2):
        return(req.num1*req.num2)
    elif(req.operator_id == 3):
        return(req.num1/req.num2)
    elif(req.operator_id == 4):
        return(req.num1**req.num2)
    else:
        rospy.loginfo('Invalid operator !')

if __name__ == '__main__':
    rospy.init_node('calc_server')
    server = rospy.Service('/calculator', calc_service, callBackFun)
    rospy.spin()