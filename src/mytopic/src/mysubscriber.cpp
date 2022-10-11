// 1.包含头文件
#include "ros/ros.h"
#include "std_msgs/String.h" //与接收的数据类型对应
//回调函数，每订阅到一条消息，便调用一次回调函数（事件触发的中断）
void doMsg(const std_msgs::String::ConstPtr &msg_p)
{
    ROS_INFO("我听见:%s", msg_p->data.c_str());
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    // 2.初始化 ROS 节点
    ros::init(argc, argv, "listener"); // ROS中节点名称保持唯一
    // 3.实例化 ROS 句柄
    ros::NodeHandle nh;
    // 4.实例化 订阅者 对象
    ros::Subscriber sub = nh.subscribe<std_msgs::String>("chatter", 10, doMsg);
    // 5.处理订阅的消息(回调函数)
    //泛型可缺省，能够根据回调函数自动推导
    // 6.设置循环调用回调函数
    ros::spin(); //循环读取接收的数据，并调用回调函数处理
    return 0;
}