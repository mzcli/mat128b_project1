% part 5 orbit
function part5(const)
    fixpt1 = (1 + sqrt(1 - 4 * const))/2;
    fixpt2 = (1 - sqrt(1 - 4 * const))/2; 
    [boolean, ~] = helper(0, const, fixpt1, fixpt2);
    if boolean
        fprintf('The julia set is connected.');
    else
        fprintf('The julia set is not connected.');
    end;
end