// 1.包含头文件
#include "ros/ros.h"
#include "geometry_msgs/Twist.h" //普通文本类型的消息
#include <sstream>
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, ""); //设置编码
    // 2.初始化 ROS 节点:命名(唯一)
    ros::init(argc, argv, "control");
    //参数1和参数2 后期为节点传值会使用
    //参数3 是节点名称，是一个标识符，需要保证运行后，在 ROS 网络拓扑中唯一

    // 3.实例化 ROS 句柄
    ros::NodeHandle nh;
    //该类封装了ROS中的一些常用功能
    // 4.实例化 发布者 对象
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);
    //模板/泛型: 将要发布的消息类型
    //参数1: 要发布到的话题
    //参数2: 队列中最大保存的消息数，超出此阀值时，先进的先销毁(时间早的先销毁)

    geometry_msgs::Twist msg;

    msg.linear.x = 2.0;
    msg.linear.y = 0.0;
    msg.linear.z = 0.0;

    msg.angular.x = 0.0;
    msg.angular.y = 0.0;
    msg.angular.z = 2.0;

    //发布频率(一秒5次)
    ros::Rate r(10);
    while (ros::ok()) //节点存在便一直循环
    {
        // 6.发布消息
        pub.publish(msg);
        //官方建议添加spinOnce(),循环处理回调函数
        ros::spinOnce();
    }
    return 0;
}
