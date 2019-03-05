#include <iostream>
#include<ros/ros.h>
#include<assignment/calc_service.h>
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "calc_client"); //Initialize node
    ros::NodeHandle nh; //Create node handle object

    bool srv_comms_ok = false;
    while(ros::ok())
    {
        ros::service::waitForService("/calculator");
        ros::ServiceClient client = nh.serviceClient<assignment::calc_service>("/calculator");
        assignment::calc_service srv_packet;

        //Read from keyboard
        std::cout << "Enter number 1: ";
        std::cin >> srv_packet.request.num1;
        std::cout << "Enter number 2: ";
        std::cin >> srv_packet.request.num2;
        std::cout << "Enter operator ID (0 = +, 1 = -, 2 = *, 3 = /, 4 = ^): ";
        std::cin >> srv_packet.request.operator_id;

        //Call service
        srv_comms_ok = client.call(srv_packet);
        if(srv_comms_ok)
        {
            ROS_INFO("Service was successfully called.");
            ROS_INFO("Result: %f", srv_packet.response.result);
        }
        else
        {
            ROS_INFO("Service call was unsuccessful");
        }
    }

    return 0;
}