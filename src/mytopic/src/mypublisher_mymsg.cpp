#include "ros/ros.h"
#include "mytopic/student.h"
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    // 1.初始化 ROS 节点
    ros::init(argc, argv, "talker_student");
    // 2.创建 ROS 句柄
    ros::NodeHandle nh;
    // 3.创建发布者对象
    ros::Publisher pub = nh.advertise<mytopic::student>("chatter_student", 1000);
    // 4.组织被发布的消息，编写发布逻辑并发布消息
    mytopic::student p;
    p.name = "张宇威";
    p.number = "201901091127";
    p.course = "高等数学(下册)";
    p.score = 59;
    ros::Rate r(1);
    while (ros::ok())
    {
        pub.publish(p);
        p.score += 1;
        ROS_INFO("发布的消息: 姓名：%s, 学号：%s, 课程：%s, 分数：%4.2f",
                p.name.c_str(),p.number.c_str(), p.course.c_str(),p.score);
        r.sleep();
        ros::spinOnce();
    }
    return 0;
}