#! /usr/bin/env python #指定解释器
import rospy #导包
if __name__ == "__main__": #主入口
    rospy.init_node("Hello") #初始化ROS节点
    rospy.loginfo("Hello World by Python!!!!") #输出日志