% part 2 filled julia set
function M = part2(const)
    fixpt1 = (1 + sqrt(1 - 4 * const))/2;
    fixpt2 = (1 - sqrt(1 - 4 * const))/2;   
    m = 2 * round(abs(fixpt1)) + 1;
    n = 2 * round(abs(fixpt2)) + 1;  
    M = 2 * ones(200 * n, 200 * m);
    for i = 1 : 200 * m
        for j = 1 : 200 * n
            x = - m + (i - 1) * .01;
            y = - n + (j - 1) * .01;
            zk = x + 1i * y;
            [boolean, ~] = helper(zk, const, fixpt1, fixpt2);
            if boolean
                M(j, i) = 1;
            end
        end
    end
    colormap([1 0 0; 1 1 1]);
    image([-m, m], [-n, n], M);
    axis xy
end