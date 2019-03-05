#include<ros/ros.h>
#include<std_msgs/Int64.h>

int counter = 0;
ros::Publisher pub;
void callBackFun(const std_msgs::Int64& num)
{
    counter += num.data;
    ROS_INFO("Count: %d", counter);
    std_msgs::Int64 msg;
    msg.data = counter;
    pub.publish(msg);
    return;
}

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "subscriber_and_publisher");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/number_publisher", 10, callBackFun);
    pub = nh.advertise<std_msgs::Int64>("/number_count", 10);
    ros::spin();
    return(0);
}