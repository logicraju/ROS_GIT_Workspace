#include<ros/ros.h>
#include<std_msgs/String.h>
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("/random_topic",10);
    std_msgs::String msg;
    msg.data = "Hello World !";

    ros::Rate rate(1);
    while(ros::ok())
    {
        pub.publish(msg);
        rate.sleep();
    }
    return(0);
}