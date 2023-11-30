#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Twist.h>
 
 
double delta_joint1;
double delta_joint2;
double delta_joint3;
double delta_joint4;
double delta_joint5;
double delta_joint6;
double delta_joint7;
 
double delta_joint8;
double delta_joint9;
 
const double degree2rad = M_PI/180;
 
 
void valuesCallback(const geometry_msgs::Twist& msg)
{
  ROS_INFO("Teleoperated delta values (in degrees): [%f, %f]", msg.linear.x, msg.angular.z);
  delta_joint1 = msg.linear.x * degree2rad;
  delta_joint2 = msg.angular.z * degree2rad;
 
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
 
  double joint1 = 0.0;
  double joint2 = 0.0;
  double joint3 = 0.0;
  double joint4 = 0.0;
  double joint5 = 0.0;
  double joint6 = 0.0;
  double joint7 = 0.0;
  double joint8 = 0.0;
  double joint9 = 0.0;
 
 
 
   delta_joint1 = 0.0;
   delta_joint2 = 0.0;
   delta_joint3 = 0.0;
   delta_joint4 = 0.0;
   delta_joint5 = 0.0;
   delta_joint6 = 0.0;
   delta_joint7 = 0.0;
   
   delta_joint8 =0;
   delta_joint9 =0;
 
  while (ros::ok())
  {
      //listen to the teleop_keys
      ros::spinOnce();
      //if (pan+deltaPan < 90*degree2rad && pan+deltaPan > -90*degree2rad) pan = pan + deltaPan;
      //if (tilt+deltaTilt < 45*degree2rad && tilt+deltaTilt > -45*degree2rad ) tilt = tilt + deltaTilt;
      joint1= joint1 + delta_joint1;
      joint2= joint2 + delta_joint2;
      joint3= 0;
      joint4= 0;
      joint5= 0;
      joint6= 0;
      joint7= 0;
 
      joint8= 0;
      joint9= 0;
 
 
      //update joint_state
      joint_state.header.stamp = ros::Time::now();
      joint_state.name[0] ="shoulder_pan_joint";
      joint_state.position[0] = joint1;
      joint_state.name[1] ="shoulder_pitch_joint";
      joint_state.position[1] = joint2;
      joint_state.name[2] ="elbow_roll_joint";
      joint_state.position[2] = joint3;
      joint_state.name[3] ="elbow_pitch_joint";
      joint_state.position[3] = joint4;
      joint_state.name[4] ="wrist_roll_joint";
      joint_state.position[4] = joint5;
      joint_state.name[5] ="wrist_pitch_joint";
      joint_state.position[5] = joint6;
      joint_state.name[6] ="gripper_roll_joint";
      joint_state.position[6] = joint7;
 
      joint_state.name[7] ="finger_joint1";
      joint_state.position[7] = joint8;
      joint_state.name[8] ="finger_joint2";
      joint_state.position[8] = joint9;
 
      //send the joint state
      joint_pub.publish(joint_state);
     
      delta_joint1 = 0;
      delta_joint2 = 0;
      delta_joint3 = 0;
      delta_joint4 = 0;
      delta_joint5 = 0;
      delta_joint6 = 0;
      delta_joint7 = 0;
 
      delta_joint8 = 0;
      delta_joint9 = 0;
 
      loop_rate.sleep();
  }
  return 0;
}