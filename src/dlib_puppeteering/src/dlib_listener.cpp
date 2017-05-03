  #include "ros/ros.h"
  #include "std_msgs/String.h"
  #include <pau2motors/pau.h>
  #include <iostream>
  #include <vector>
  #include <cstdlib> //For atof
  #include <boost/lexical_cast.hpp>

  using namespace std;
  // #include <sstream>
  
  /**
   * This is simple receipt of messages from topic blender_values published by dlib_puppeteering_node.
   */
  ros::Publisher pub_dlib_values;
  void dlibListenerCallback(const std_msgs::String::ConstPtr& msg)
  {
      // Pau message to carry dlib_values
      pau2motors::pau dlib_values;

      // Declare Vectors and others to carry incoming shapes and values
      std::vector<std::string> blendshape_names;
      std::vector<float> blendshape_values;
      std::vector<std::string> all;

      std::string str = msg->data.c_str();
      std::size_t posSem = str.find(";");
      std::size_t pos;
      
      std::string str1;
      std::string str2;
      std::string temp;
      int prev_i = 0;
      int semCnt = 0;
      // Clear all the vectors
      all.clear();
      blendshape_values.clear();
      blendshape_names.clear();

      // // Note: Do process all the strings-push "shapekeyname:shapekeyvalue" in to the vector "all" as follows
      for (int i = 0; i < str.size(); ++i)
      {
        semCnt++;
        if (str.at(i) == ';')
        {
          all.push_back(str.substr(prev_i, semCnt-1));
          prev_i += semCnt;
          semCnt = 0;
        }if (prev_i+semCnt == str.size())
        {
          all.push_back(str.substr(prev_i, str.size()));
        }
      }     

      for (int i = 0; i < all.size(); ++i) 
      {
        pos = all.at(i).find(":");
        blendshape_names.push_back(all.at(i).substr(0, pos));
        blendshape_values.push_back(std::atof(all.at(i).substr(pos+1, all.at(i).size()).c_str()));
      }

      //ROS_INFO is automatically timestamped but printf is not.      
      // boost::lexical_cast<string>(roundOff_val).c_str()-to convert double to string
      // to output string use "%s", to output double or float use "%f"
      // double val = blendshape_values.at(1);
      // ROS_INFO("%f",  val);

      // Publish
      if (blendshape_names.size() == blendshape_values.size()) {

          dlib_values.m_shapekeys = blendshape_names; 
          dlib_values.m_coeffs = blendshape_values;

          pub_dlib_values.publish(dlib_values);
      }
  }
  
  int main(int argc, char **argv)
  {    
    ros::init(argc, argv, "dlib_listener_node");  
    ros::NodeHandle n;  
    ros::Subscriber sub = n.subscribe("/dlib_values", 1000, dlibListenerCallback);  
    // Publisher of the message recieved from the dlib to the system.
    pub_dlib_values = n.advertise<pau2motors::pau>("/blender_api/dlib_values", 1000);


    ros::spin();


  
    return 0;
  }