#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Twist.h>
 
 
double parte1;
double parte2;
double parte3;
double parte4;
double parte5;
double parte6;
double parte7;
double parte8;
double parte9; 



const double degree2rad = M_PI/180;
 
 
void valuesCallback(const geometry_msgs::Twist& msg)
{
  ROS_INFO("Teleoperated delta values (in degrees): [%f, %f]", msg.linear.x, msg.angular.z);
  parte1 = msg.linear.x * degree2rad;
  parte2 = msg.angular.z * degree2rad;
 
}
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "joint_publisher");
  ros::NodeHandle n;
 
  //The node subscribes to the values given by the keys in the keyboard
  ros::Subscriber sub = n.subscribe("teleop_values", 1, valuesCallback);
  //The node advertises the joint values of the pan-tilt
  ros::Publisher joint_pub = n.advertise<sensor_msgs::JointState>("joint_states", 1);
 
  ros::Rate loop_rate(30);
 
 
  // message declarations
  sensor_msgs::JointState joint_state;
  joint_state.name.resize(9);
  joint_state.position.resize(9);
 
  double a1 = 0.0;
  double a2 = 0.0;
  double a3 = 0.0;
  double a4 = 0.0;
  double a5 = 0.0;
  double a6 = 0.0;
  double a7 = 0.0;
  double a8 = 0.0;
  double a9 = 0.0;


   parte1 = 0.0;
   parte2 = 0.0;
   parte3 = 0.0;
   parte4 = 0.0;
   parte5 = 0.0;
   parte6 = 0.0;
   parte7 = 0.0;
   parte8 = 0.0;
   parte9 = 0.0;


  while (ros::ok())
  {
      //listen to the teleop_keys
      ros::spinOnce();
      a1= a1 + parte1;
      a2= a2 + parte2;
      a3= 0;
      a4= 0;
      a5= 0;
      a6= 0;
      a7= 0;
      a8= 0;
      a9= 0;
 
      //update joint_state
      joint_state.header.stamp = ros::Time::now();
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
      joint_state.name[7] ="finger_joint1";
      joint_state.position[7] = a8;
      joint_state.name[8] ="finger_joint2";
      joint_state.position[8] = a9;
 
      //send the joint state
      joint_pub.publish(joint_state);
     
      parte1 = 0;
      parte2 = 0;
      parte3 = 0;
      parte4 = 0;
      parte5 = 0;
      parte6 = 0;
      parte7 = 0;
      parte8 = 0;
      parte9 = 0;

      loop_rate.sleep();
  }
  return 0;
}