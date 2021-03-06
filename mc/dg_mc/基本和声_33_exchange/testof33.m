function testof33()
global bus branch

%% bus 
% 节点号 电压幅值 相角 注入有功 注入无功 节点类型
bus_0 = bus;
bus=[                                      
   1   12.66  0.0   -0      -0          3  ; 
   2   12.66  0.0   -100    -60         1  ; 
   3   12.66  0.0   -90     -40         1  ; 
   4   12.66  0.0   -120    -80         1  ; 
   5   12.66  0.0   -60     -30         1  ;
   6   12.66  0.0   -60     -20         1  ;
   7   12.66  0.0   -200    -100         1  ; 
   8   12.66  0.0   -200    -100        1  ; 
   9   12.66  0.0   -60     -20         1  ; 
   10  12.66  0.0   -60     -20         1  ; 
   11  12.66  0.0   -45     -30         1  ; 
   12  12.66  0.0   -60     -35         1  ; 
   13  12.66  0.0   -60     -35         1  ; 
   14  12.66  0.0   -120    -80         1  ; 
   15  12.66  0.0   -60     -10         1  ; 
   16  12.66  0.0   -60     -20         1  ; 
   17  12.66  0.0   -60     -20         1  ; 
   18  12.66  0.0   -90     -40         1  ; 
   19  12.66  0.0   -90     -40         1  ; 
   20  12.66  0.0   -90     -40         1  ; 
   21  12.66  0.0   -90     -40         1  ; 
   22  12.66  0.0   -90     -40         1  ; 
   23  12.66  0.0   -90     -50         1  ; 
   24  12.66  0.0   -420   -200       1  ; 
   25  12.66  0.0   -420    -200        1  ; 
   26  12.66  0.0   -60     -25         1  ; 
   27  12.66  0.0   -60     -25         1  ; 
   28  12.66  0.0   -60     -20         1  ; 
   29  12.66  0.0   -120    -70         1  ; 
   30  12.66  0.0   -200   -600       1  ; 
   31  12.66 0.0  -150   -70            1;
   32  12.66  0.0   -210    -100        1  ; 
   33  12.66  0.0   -60     -40         1  ;
   %34  12.66  0.0   DG1(1)  0           2  ;%可控的PV节点（燃气轮机）
   %35  12.66  0.0   150     0           1  ;%保持满发的PI节点（燃料电池）
   %36  12.66  0.0   DG2(1)  0           1  ;%发电不确定的风电
   %37  12.66  0.0   DG2(2)  0           1  ;%发电不确定的风电
   ]; 
%bus(32,4) = bus(32,4) - 600;
%bus(25,4) = bus(25,4) - 400;
%bus(9,4) = bus(9,4) -0;

%% branch

branch = [                                                 
       1    2    0.0922    0.0470           0.0 0.0     0;   %1  
       2    3    0.4930    0.2511           0.0 0.0     0;   %2  
       3    4    0.3660    0.1864           0.0 0.0     0;   %3  
       4    5    0.3811    0.1941           0.0 0.0     0;   %4  
       5    6    0.8190    0.7070           0.0 0.0     0;   %5  
       6    7    0.1872    0.6188           0.0 0.0     0;   %6  
       7    8    0.7114    0.2351           0.0 0.0     0;   %7  
       8    9    1.0300    0.7400           0.0 0.0     0;   %8  
       9    10   1.0440    0.7400           0.0 0.0     0;   %9  
       10   11   0.1966    0.0650           0.0 0.0     0;   %10 
       11   12   0.3744    0.1238           0.0 0.0     0;   %11 
       12   13   1.4680    1.1550           0.0 0.0     0;   %12 
       13   14   0.5416    0.7129           0.0 0.0     0;   %13 
       14   15   0.5910    0.5260           0.0 0.0     0;   %14 
       15   16   0.7463    0.5450           0.0 0.0     0;   %15 
       16   17   1.2890    1.7210           0.0 0.0     0;   %16 
       17   18   0.7320    0.5740           0.0 0.0     0;   %17 
       2    19   0.1640    0.1565           0.0 0.0     0;   %18 
       19   20   1.5042    1.3554           0.0 0.0     0;   %19 
       20   21   0.4095    0.4784           0.0 0.0     0;   %20 
       21   22   0.7089    0.9373           0.0 0.0     0;   %21 
       3    23   0.4512    0.3083           0.0 0.0     0;   %22 
       23   24   0.8980    0.7091           0.0 0.0     0;   %23 
       24   25   0.8960    0.7011           0.0 0.0     0;   %24 
       6    26   0.2030    0.1034           0.0 0.0     0;   %25 
       26   27   0.2842    0.1447           0.0 0.0     0;   %26 
       27   28   1.0590    0.9337           0.0 0.0     0;   %27 
       28   29   0.8042    0.7006           0.0 0.0     0;   %28 
       29   30   0.5075    0.2585           0.0 0.0     0;   %29 
       30   31   0.9744    0.9630           0.0 0.0     0;   %30 
       31   32   0.3105    0.3619           0.0 0.0     0;   %31 
       32   33   0.3410    0.5302           0.0 0.0     0;   %32 
       
       8    21   2.0000    2.0000           0.0 0.0     0;   %33 
       9    15   2.0000    2.0000           0.0 0.0     0;   %34 
       12   22   2.0000    2.0000           0.0 0.0     0;   %35 
       18   33   0.5000    0.5000           0.0 0.0     0;   %36 
       25   29   0.5000    0.5000           0.0 0.0     0;   %37
  %    22   34   0.5000   0.5000           0.0 0.0     0;   %38(DG)
  %    15   35   0.5000   0.5000           0.0 0.0     0;   %39(DG)
  %    26   36   0.5000   0.5000           0.0 0.0     0;   %40(DG)
  ];
%% 标幺化
SB = 10;
UB = 12.66;
ZB = UB^2/SB;
bus(:,2) = bus(:,2)/12.66;
bus(:,[4,5]) = bus(:,[4,5])/SB/1000;
branch(:,[3,4]) = branch(:,[3,4])/ZB;







