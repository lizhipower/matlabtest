function [ branch ] = decodeOP( OP )
    [bus branch] = testof33();
    ii = 1;
    for i = 1:37
        if OP(i) == 1
            branch_new(ii,:) = branch(i,:);
            ii = ii+1;
        end
    end
    branch = branch_new;


end

