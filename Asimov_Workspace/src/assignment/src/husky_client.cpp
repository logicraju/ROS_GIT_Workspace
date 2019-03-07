#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
#include<stdlib.h>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "husky");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/husky_velocity_controller/cmd_vel",10);
    geometry_msgs::Twist msg;
    msg.linear.x = 5.0;
    msg.linear.y = 0.0;
    msg.linear.z = 0.0;
    msg.angular.x = 0.0;
    msg.angular.y = 0.0;
    msg.angular.z = 1.0;
    ros::Rate rate(3);
    while(ros::ok())
    {
        pub.publish(msg);
        rate.sleep();
    }
    return(0);
}