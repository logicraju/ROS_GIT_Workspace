#include<ros/ros.h>
#include<std_msgs/String.h>

void callBackFun(const std_msgs::String &msg)
{
    ROS_INFO("Received message: %s", msg.data.c_str());
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "subscriber");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/random", 10, callBackFun);
    ros::spin();
}