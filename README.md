#说明

这是我的第一个github项目，主要用于目前一个有想法的论文的程序。

本项目基于matlab，试图在现有的蒙特卡罗方法和电力系统的结合点上做出一些创新性工作。

##13/11/27 22:55

mc函数中可以生成系统状态序列，可以看出系统状态、状态持续时间，只能支持确定个元件，扩展性不足；

加入实验室mc函数；

加入一些常用的数学函数，目前加入了一个简单的欧拉法函数。

##14/11/27 22:56

解决了计算系统状态的多元件支持，可以根据cell自动计算n元件系统的状态。