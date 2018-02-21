function orb(zk)
    [boolean, ~] = helper(zk, 0, 1, 0);
    if boolean
        fprintf('The julia set is connected.');
    else
        fprintf('The julia set is not connected.');
    end;
end