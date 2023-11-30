#include <ros/ros.h>
#include <sensor_msgs/JointState.h>


double parte1;
double parte2;
double parte3;
double parte4;
double parte5;
double parte6;
double parte7;


double scale;
const double degree2rad = M_PI/180;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "urdf_tutorial");
  ros::NodeHandle n;
  
  //The node advertises the joint values of the pan-tilt
  ros::Publisher joint_pub = n.advertise<sensor_msgs::JointState>("joint_states", 1);
    
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
      //moving one degree
      a1 =  degree2rad * scale;
      a2 = degree2rad * scale;
      a3 =  degree2rad * scale;
      a4 = degree2rad * scale;
      a5 =  degree2rad * scale;
      a6 = degree2rad * scale;
      a7 =  degree2rad * scale;

      a1= a1 + parte1;
      a2= a2 + parte2;
      a3= a3 + parte3;
      a4= a4 + parte4;
      a5= a5 + parte5;
      a6= a6 + parte6;
      a7= a7 + parte7;


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


      //send the joint state 
      joint_pub.publish(joint_state);

      loop_rate.sleep();
  }
  return 0;
}



