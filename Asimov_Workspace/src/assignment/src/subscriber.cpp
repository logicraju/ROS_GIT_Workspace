#include<ros/ros.h>
#include<std_msgs/String.h>
#include<fstream>
void callBackFun1(const std_msgs::String &msg)
{
    ROS_INFO("Message received on topic /text1 : %s", msg.data.c_str());
    std::ofstream file1;
    file1.open("text1.txt", std::ios_base::app);
    file1 << msg.data.c_str();
    file1 << "\n";
    file1.close();
    return;
}

void callBackFun2(const std_msgs::String &msg)
{
    ROS_INFO("Message received on topic /text2 : %s", msg.data.c_str());
    std::ofstream file2;
    file2.open("text2.txt", std::ios_base::app);
    file2 << msg.data.c_str();
    file2 << "\n";
    file2.close();
    return;
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "subscriber");
    ros::NodeHandle nh;
    ros::Subscriber sub1 = nh.subscribe("/text1", 1000, callBackFun1);
    ros::Subscriber sub2 = nh.subscribe("/text2", 1000, callBackFun2);
    ros::spin();
    return(0);
}