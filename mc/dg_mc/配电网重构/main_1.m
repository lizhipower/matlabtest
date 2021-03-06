
function [ HF, HM, OPL] = main_1(bus_temp)

    global bus branch round1 round2 round3 round4 round5
    round1=[2 3 4 5 6 7 33 20 19 18];%10
    round2=[8 9 10 11 35 21 33];%7
    round3=[34 14 13 12 11 10 9];%7
    round4=[22 23 24 37 28 27 26 25 5 4 3];%11
    round5=[25 26 27 28 29 30 31 32 36 17 16 15 34 8 7 6];%16

    disp('initial');
    [init_HM,init_OPL] = initial(20,5);

    disp('HS');
    [ HF, HM, OPL] = HS( bus_temp,init_HM,init_OPL,20,5);
end

