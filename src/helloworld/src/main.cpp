#include "ros/ros.h" //包含ros头文件
#include <iostream>
int main(int argc, char *argv[]) //程序入口
{
    setlocale(LC_CTYPE, "zh_CN.utf8"); // fix code error
    ros::init(argc, argv, "hello"); //执行 ros 节点初始化
    // ros::NodeHandle n; //创建 ros 节点句柄(非必须)


    std::cout<<"Hello World!"<<std::endl;
    ROS_INFO("ros init !"); //输出日志
    return 0;
}