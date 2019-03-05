#include<ros/ros.h>
#include<std_msgs/String.h>
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;
    ros::Publisher pub1 = nh.advertise<std_msgs::String>("/text1", 1000);
    ros::Publisher pub2 = nh.advertise<std_msgs::String>("/text2", 1000);
    ros::Rate rate(1);
    std_msgs::String msg;
    msg.data = "hello world !";

    while(ros::ok())
    {
        pub1.publish(msg);
        pub2.publish(msg);
        rate.sleep();
    }

    return(0);
}