#include<ros/ros.h>
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "my_node");
    ros::NodeHandle nh;
    ROS_INFO("Node has started");
    ros::Duration(5).sleep();
    ROS_INFO("Exiting...");
    return 0;
}