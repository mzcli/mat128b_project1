function example()     
    fixpt1 = (1 + sqrt(6))/2;
    fixpt2 = (1 - sqrt(6))/2;
    M = 2 * ones(140, 360);
    for j = 1 : 140,
        y = - .7 + (j - 1) * .01;
        for i = 1 : 360,
            x = - 1.8 + (i - 1) * .01;
            zk = x + 1i * y;
            helper(zk, -1.25, fixpt1, fixpt2);
            [boolean, ~] = helper(zk, -1.25, 1, 0);
            if boolean
                M(j, i) = 1;
            end
        end
    end
    colormap([1 0 0; 1 1 1]);
    image([-1.8, 1.8], [-1.7, 1.7], M);
    axis xy
end