function [DS,V] = powerflow(bus_temp,OP)
global bus branch
%testof33();
%bus_temp = bus;
branch_temp = branch;
%%
ii = 1;
for i = 1:length(branch_temp(:, 1))
      if OP(i) == 0
        branch_temp(i , 3) = 10000;
    end
end


% branch_temp = branch_new;

[bus_temp,branch_temp,nodenum] = reordering(bus_temp,branch_temp);
% bus_temp
% nodenum
Ybus = admittance_matrix(bus_temp,branch_temp);
NRloop;

end

