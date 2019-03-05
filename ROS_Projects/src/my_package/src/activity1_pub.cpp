#include<ros/ros.h>
#include<std_msgs/Int64.h>
int main(int argc, char* argv[])
{
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::Int64>("number_publisher", 10);
    ros::Rate rate(1);
    std_msgs::Int64 msg;
    msg.data = 5;
    while(ros::ok())
    {
        pub.publish(msg);
        rate.sleep();
    }
}