#include "ros/ros.h"
#include "mytopic/student.h"
void doPerson(const mytopic::student::ConstPtr &p)
{
  ROS_INFO("订阅的人信息: 姓名：%s, 学号：%s, 课程：%s, 分数：%4.2f",
            p->name.c_str(),p->number.c_str(), p->course.c_str(),p->score);
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    // 1.初始化 ROS 节点
    ros::init(argc, argv, "listener_student");
    // 2.创建 ROS 句柄
    ros::NodeHandle nh;
    // 3.创建订阅者对象
    ros::Subscriber sub = nh.subscribe<mytopic
                                           ::student>("chatter_student", 10, doPerson);
    // 4.回调函数中处理 person
    // 5.ros::spin();
    ros::spin();
    return 0;
}
