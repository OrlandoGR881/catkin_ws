#include <ros/ros.h>
#include <turtlesim/Spawn.h>
#include "beginner_tutorials/distancia1.h"
#include <cmath>
 
bool calDist(beginner_tutorials::distancia1::Request  &req,
            beginner_tutorials::distancia1::Response &res)
{
    double x1 = req.x1;
    double y1 = req.y1;
    double x2 = req.x2;
    double y2 = req.y2;
 
    double distancia1 = std::sqrt(std::pow(x2 - x1, 2) + std::pow(y2 - y1, 2));
 
    res.distancia1 = distancia1;
 
    return true;
}
 
int main(int argc, char **argv){
 
    ros::init(argc, argv, "spawn_turtle_Distancia");
    ros::NodeHandle nh;
 
//Create a client object for the spawn service. This
//needs to know the data type of the service and its name.
    ros::ServiceClient spawnClient = nh.serviceClient<turtlesim::Spawn>("spawn");
    ros::ServiceServer service = nh.advertiseService("Calculo_Distancia", calDist);
 
//Create the request and response objects.
    turtlesim::Spawn::Request req;
    turtlesim::Spawn::Response resp;
 
 
 
 
    req.x = 5.5;
    req.y = 5.5;
    req.theta = 0;
    req.name = "turtle2";
 
    ros::service::waitForService("spawn", ros::Duration(5));
    bool success = spawnClient.call(req,resp);
 
    if(success){
    ROS_INFO_STREAM("Spawned a turtle named "
            << resp.name);
    }else{
    ROS_ERROR_STREAM("Fallo.");
    }
 
    ros::spin();
    return 0;
 
 
}