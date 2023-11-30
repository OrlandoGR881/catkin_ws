#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <iomanip> 
#include "beginner_tutorials/distancia1.h"
 
float x_1;
float y_1;
float x_2;
float y_2;
 
 
void turtlePose1(const turtlesim::Pose& msg) {
    x_1 = msg.x;
    y_1 = msg.y;
}
 
void turtlePose2(const turtlesim::Pose& msg) {
    x_2 = msg.x;
    y_2 = msg.y;
}
 
 
int main(int argc, char **argv) {
  // Initialize the ROS system and become a node.
  ros::init(argc, argv, "Distancia Oberser");
  ros::NodeHandle nh;
  // Create a subscriber object.
  ros::Subscriber sub1 = nh.subscribe("turtle1/pose", 1000,
    &turtlePose1);
  ros::Subscriber sub2 = nh.subscribe("turtle2/pose", 1000,
    &turtlePose2);
 
 
  ros::ServiceClient client = nh.serviceClient<beginner_tutorials::distancia1>("Calculo_Distancia");
 
 
  beginner_tutorials::distancia1 srv;
 
 
  ros::Rate rate(0.2);
 
  while (ros::ok()) {
 
    ros::spinOnce();
 
    srv.request.x1 = x_1;
    srv.request.y1 = y_1;
    srv.request.x2 = x_2;
    srv.request.y2 = y_2;
 
    if (client.call(srv))
    {
      ROS_INFO("distancia1: %f", srv.response.distancia1);
    }
    else
    {
      ROS_ERROR("FALLA");
      return 1;
    }
 
    rate.sleep();
  }
 
  return 0;
}