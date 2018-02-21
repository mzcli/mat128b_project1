% part 1 fractal
function M = part1()     
    M = 2 * ones(200, 200);
    for i = 1 : 200
        for j = 1 : 200
            x = - 1 + (i - 1) * .01;
            y = - 1 + (j - 1) * .01;
            zk = x + 1i * y;
            [boolean, ~] = helper(zk, 0, 1, 0);
            if boolean
                M(j, i) = 1;
            end
        end
    end
    colormap([1 0 0; 1 1 1]);
    image([-2, 2], [-2, 2], M);
    axis xy
end