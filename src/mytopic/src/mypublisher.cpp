// 1.包含头文件
#include "ros/ros.h"
#include "std_msgs/String.h" //普通文本类型的消息
#include <sstream>
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, ""); //设置编码
    // 2.初始化 ROS 节点:命名(唯一)
    ros::init(argc, argv, "talker");
    //参数1和参数2 后期为节点传值会使用
    //参数3 是节点名称，是一个标识符，需要保证运行后，在 ROS 网络拓扑中唯一

    // 3.实例化 ROS 句柄
    ros::NodeHandle nh;
    //该类封装了ROS中的一些常用功能
    // 4.实例化 发布者 对象
    ros::Publisher pub = nh.advertise<std_msgs::String>("chatter", 10);
    //模板/泛型: 将要发布的消息类型
    //参数1: 要发布到的话题
    //参数2: 队列中最大保存的消息数，超出此阀值时，先进的先销毁(时间早的先销毁)

    // 5.组织被发布的数据，并编写逻辑发布数据
    //存储被发布的数据(动态组织)
    std_msgs::String msg;
    // msg.data = "你好啊！！！";
    std::string msg_front = "Hello 你好！"; //消息前缀
    int count = 0;                          //消息计数器，文本编号
    //发布频率(一秒5次)
    ros::Rate r(5);
    while (ros::ok()) //节点存在便一直循环
    {
        //使用 stringstream 流拼接字符串与编号
        std::stringstream ss;
        ss << msg_front << count; //拼接
        msg.data = ss.str();      //将流中的数据提取为字符串

        // 6.发布消息
        pub.publish(msg);
        //加入调试，打印发送的消息
        ROS_INFO("发送的消息:%s", msg.data.c_str());
        r.sleep();
        //根据设置的发送频率自动休眠，休眠时间=1/频率；
        count++; //循环结束前，让 count 自增
        //官方建议添加spinOnce(),循环处理回调函数
        ros::spinOnce();
    }
    return 0;
}
