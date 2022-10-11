// 1.包含头文件
#include "ros/ros.h"
#include "myservice/add.h"

bool doReq(myservice::add::Request &req, myservice::add::Response &resp);

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "test_service_transmation_service");                              // 2.初始化 ROS节点
    ros::NodeHandle nh;                                               // 3.创建 ROS 句柄
    ros::ServiceServer server = nh.advertiseService("xuejiafa", doReq);  // 4.创建 服务 对象
    ROS_INFO("服务已经启动....");
    // 5.回调函数处理请求并产生响应
    ros::spin(); // 6.由于请求有多个，需要调用 ros::spin()
    return 0;
}

// bool 返回值由于标志是否处理成功
bool doReq(myservice::add::Request &req, myservice::add::Response &resp)
{
    int num1 = req.num1;
    int num2 = req.num2;
    ROS_INFO("服务器接收到的请求数据为:num1 = %d, num2= %d", num1, num2);
    if (num1 < 0 || num2 < 0) //逻辑处理
    {
        ROS_ERROR("提交的数据异常:数据不可以为负数");
        return false;
    }
    //如果没有异常，那么相加并将结果赋值给 resp
    resp.sum = num1 + num2;
    return true;
}
