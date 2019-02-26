#include<ros/ros.h>
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "node_1");
    ros::NodeHandle nh;
    ROS_INFO("Node is starting...");
    ros::Rate rate(1);

    while(ros::ok())
    {
        ROS_INFO("Hello World !");
        rate.sleep();
    }

    return 0;
}