#include<ros/ros.h>
#include<std_msgs/String.h>

void callBackFun(const std_msgs::String& data)
{
    ROS_INFO("Received message: %s", data.data.c_str());
    return;
}

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "Subscriber");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/random_topic",10,callBackFun);
    ros::spin();
    return(0);
}