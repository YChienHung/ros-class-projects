// 1.包含头文件
#include "ros/ros.h"
#include "turtlesim/Pose.h" //普通文本类型的消息
#include <sstream>

void doPose(const turtlesim::Pose::ConstPtr &p)
{
    ROS_INFO("turtle pose:x=%.2f,y=%.2f,theta=%.2f,lv=%.2f,av=%.2f", p->x, p->y, p->theta, p->linear_velocity, p->angular_velocity);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, ""); //设置编码

    ros::init(argc, argv, "sub_turtle_info");

    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe<turtlesim::Pose>("/turtle1/pose", 1000, doPose);

    ros::spin();

    return 0;
}
