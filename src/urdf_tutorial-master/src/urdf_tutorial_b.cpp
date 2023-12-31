#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Twist.h>
#include "urdf_tutorial/changescale.h"

double parte1;
double parte2;
double parte3;
double parte4;
double parte5;
double parte6;
double parte7;

double deltaPan;
double deltaTilt;
double scale;

const double degree2rad = M_PI/180;

bool changescale(urdf_tutorial::changescale::Request  &req,
         urdf_tutorial::changescale::Response &res)
{
  scale = req.s;
  ROS_INFO("Scale changed to = %f", req.s);
  return true;
}


void valuesCallback(const geometry_msgs::Twist& msg)
{
  ROS_INFO("Teleoperated delta values (in degrees): [%f, %f]", msg.linear.x * scale, msg.angular.z * scale);
  
  parte1 = msg.linear.x * degree2rad * scale;
  parte2 = msg.angular.z * degree2rad * scale;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "joint_publisher");
  ros::NodeHandle n;

  //The node subscribes to the values given by the keys in the keyboard
  ros::Subscriber sub = n.subscribe("teleop_values", 1, valuesCallback);
  
  //The node advertises the joint values of the pan-tilt
  ros::Publisher joint_pub = n.advertise<sensor_msgs::JointState>("joint_states", 1);
  
  //The node provides a service to change the scale factor of the teleoperated motions
  ros::ServiceServer service = n.advertiseService("urdf_tutorial/change_scale", changescale);
  
  ros::Rate loop_rate(30);

  // message declarations
  sensor_msgs::JointState joint_state;
  joint_state.name.resize(7);
  joint_state.position.resize(7);
  
  double a1 = 0.0;
  double a2 = 0.0;
  double a3 = 0.0;
  double a4 = 0.0;
  double a5 = 0.0;
  double a6 = 0.0;
  double a7 = 0.0;

   parte1 = 0.0;
   parte2 = 0.0;
   parte3 = 0.0;
   parte4 = 0.0;
   parte5 = 0.0;
   parte6 = 0.0;
   parte7 = 0.0;

  scale =0.5;

  while (ros::ok())
  {
      //listen to the teleop_keys
      ros::spinOnce();
                  
      //if (pan+deltaPan < 90*degree2rad && pan+deltaPan > -90*degree2rad) pan = pan + deltaPan;
      //if (tilt+deltaTilt < 45*degree2rad && tilt+deltaTilt > -45*degree2rad ) tilt = tilt + deltaTilt;

      a1= a1 + parte1;
      a2= a2 + parte2;
      a3= a3 + parte3;
      a4= a4 + parte4;
      a5= a5 + parte5;
      a6= a6 + parte6;
      a7= a7 + parte7;


      //update joint_state
      joint_state.name[0] ="shoulder_pan_joint";
      joint_state.position[0] = a1;
      joint_state.name[1] ="shoulder_pitch_joint";
      joint_state.position[1] = a2;
      joint_state.name[2] ="elbow_roll_joint";
      joint_state.position[2] = a3;
      joint_state.name[3] ="elbow_pitch_joint";
      joint_state.position[3] = a4;
      joint_state.name[4] ="wrist_roll_joint";
      joint_state.position[4] = a5;
      joint_state.name[5] ="wrist_pitch_joint";
      joint_state.position[5] = a6;
      joint_state.name[6] ="gripper_roll_joint";
      joint_state.position[6] = a7;

      //send the joint state 
      joint_pub.publish(joint_state);

      parte1 = 0;
      parte2 = 0;
      parte3 = 0;
      parte4 = 0;
      parte5 = 0;
      parte6 = 0;
      parte7 = 0;
      
      loop_rate.sleep();
  }
  return 0;
}



