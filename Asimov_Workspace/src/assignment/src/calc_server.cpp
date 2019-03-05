#include<ros/ros.h>
#include<assignment/calc_service.h>
#include<cmath>

bool callBackFun(assignment::calc_service::Request &req, assignment::calc_service::Response &res)
{
    switch(req.operator_id)
    {
        case 0:
        {
            res.result = req.num1+req.num2;
            return(true);
        }
        case 1:
        {
            res.result = req.num1-req.num2;
            return(true);
        }
        case 2:
        {
            res.result = req.num1*req.num2;
            return(true);
        }
        case 3:
        {
            res.result = req.num1/req.num2;
            return(true);
        }
        case 4:
        {
            res.result = pow(req.num1,req.num2);
            return(true);
        }
        default:
        {
            ROS_INFO("Unknown operator !");
            return(false);
        }
    }
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "calc_server"); //Initialize node
    ros::NodeHandle nh; //Create node handle object
    ros::ServiceServer server = nh.advertiseService("/calculator", callBackFun);
    ros::spin();
    return 0;
}