% 随机产生一个未经修复的初始解
% INIT为一个1*s的矩阵，以0-1表明各个开关的开闭状态
% duan_kai为一个1*m的矩阵，储存各个环内的断开开关的编号
%%
%% output: duan_kai INIT;
%% Pram Start！
%round1=[2 3 4 5 6 7 33 20 19 18];%10
%round2=[8 9 10 11 35 21 33];%7
%round3=[34 14 13 12 11 10 9];%7
%round4=[22 23 24 37 28 27 26 25 5 4 3];%11
%round5=[25 26 27 28 29 30 31 32 36 17 16 15 34 8 7 6];%16

common12 = [33];
common13 = [];
common14 = [3,4,5];
common15 = [6,7];
common23 = [9,10,11];
common24 = [];
common25 = [8];
common34 = [];
common35 = [34];
common45 = [25,26,27,28];

%%
s = 37;
m = 5;
INIT = ones(1,s);
duan_kai = zeros(1,5);

%% 取第一个环路的断开开关
x = length(round1).*rand(1);
y1 = round1(ceil(x));
duan_kai(1) = y1;
INIT(y1) = 0;
%% 取第二个环路的断开开关
judge = 0;
for kk = 1:length(common12)
    if common12(kk) == y1
        judge = 1;
        round2 = setdiff(round2,common12);
        break
    end
end
if judge == 0
    j = 1;
    while (j <= length(round2))
        if round2(j) == y1
            round2 = [round2(1:j-1) round2(j+1:end)];
            break
        end
        j = j+1;
    end
end
x = length(round2).*rand(1);
y2 = round2(ceil(x));
duan_kai(2) = y2;
INIT(y2) = 0;
%% 取第三个环路开关
judge1 = 0;
judge2 = 0;
for kk = 1:length(common13)
    if common13(kk) == y1
        judge1 = 1;
        round3 = setdiff(round3,common13);
        break
    end
end
for kk = 1:length(common23)
    if common23(kk) == y2
        judge1 = 1;
        round3 = setdiff(round3,common23);
        break
    end
end
if judge1 == 0
    j = 1;
    while(j <= length(round3))
       if round3(j) == y1
           round3 = [round3(1:j-1) round3(j+1:end)];
           break
       end
       j = j+1;
    end
end
if judge2 == 0
    j = 1;
    while(j <= length(round3))
        if round3(j) == y2
            round3 = [round3(1:j-1) round3(j+1:end)];
            break
        end
        j = j+1;
    end
end
x = length(round3).*rand(1);
y3 = round3(ceil(x));
duan_kai(3) = y3;
INIT(y3) = 0;
%% 取第四个环路的断开开关
judge1 = 0;
judge2 = 0;
judge3 = 0;
for kk = 1:length(common14)
   if common14(kk) == y1
       judge1 = 1;
       round4 = setdiff(round4,common14);
       break
   end
end
for kk = 1:length(common24)
    if common24(kk) == y2
       judge2 = 1;
       round4 = setdiff(round4,common24);
       break
    end
end
for kk = 1:length(common34)
    if common34(kk) == y3
        judge3 = 1;
        round4 = setdiff(round4,common34);
        break
    end
end
if judge1 == 0
    j = 1;
    while(j<=length(round4))
        if round4(j) == y1
            round4 = [round4(1:j-1) round4(j+1:end)];
            break
        end
        j = j+1;
    end
end
if judge2 == 0
    j = j+1;
    while (j <= length(round4))
        if round4(j) == y2
            round4 = [round4(1:j-1) round4(j+1:end)];
            break
        end
        j = j+1;
    end
end
if judge3 == 0
    j = 1;
    while (j <= length(round4))
        if round4(j) == y3
            round4 = [round4(1:j-1) round(j+1:end)];
            break
        end
        j = j+1;
    end
end
x = length(round4).*rand(1);
y4 = round4(ceil(x));
duan_kai(4) = y4;
INIT(y4) = 0;
%% 取第五个环路的断开开关
judge1 = 0;
judge2 = 0;
judge3 = 0;
judge4 = 0;
for kk = 1:length(common15)
    if common15(kk) == y1
       judge1 = 1;
       round5 = setdiff(round5,common15);
       break
    end
end
for kk = 1:length(common25)
    if common25(kk) == y2
        judge2 = 1;
        round5 = setdiff(round5,common25);
        break
    end
end
for kk = 1:length(common35)
    if common35(kk) == y3
        judge3 = 1;
        round5 = setdiff(round5,common35);
        break
    end
end
for kk = 1:length(common45)
    if common45(kk) == y4
        judge4 = 1;
        round5 = setdiff(round5,common45);
        break
    end
end
if judge1 == 0
    j = 1;
    while(j<=length(round5))
        if round5(j) == y1
            round5 = [round5(1:j-1) round5(j+1:end)];
            break
        end
        j = j+1;
    end
end
if judge2 == 0
    j = 1;
    while (j <= length(round5))
        if round5(j) == y2
            round5 = [round5(1:j-1) round5(j+1:end)];
            break
        end
        j = j+1;
    end
end
if judge3 == 0
    j = 1;
    while (j <= length(round5))
        if round5(j) == y3
            round5 = [round5(1:j-1) round5(j+1:end)];
            break
        end
        j = j+1;
    end
end
if judge4 == 0
    j = 1;
    while (j <= length(round5))
        if round5(j) == y4
            round5 = [round5(1:j-1) round5(j+1:end)];
            break
        end
        j = j+1;
    end
end
x = length(round5).*rand(1);
y5 = round5(ceil(x));
duan_kai(5) = y5;
INIT(y5) = 0;

            
            
            
        
        
   



