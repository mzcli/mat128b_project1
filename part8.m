% part 8 mandelbrot set
function part8()  
    for i = 1 : 200
        for j = 1 : 200
            x = - 1 + (i - 1) * .01;
            y = - 1 + (j - 1) * .01;
            zk = x + 1i * y;  
            fixpt1 = (1 + sqrt(1 - 4 * zk))/2;
            fixpt2 = (1 - sqrt(1 - 4 * zk))/2;   
            [boolean, kount] = helper(0, zk, fixpt1, fixpt2);
            if ~boolean
                M(j, i) = kount * 5;
            end;
    end
    colormap(parula);
    image([-2, 2], [-2, 2], M);
    axis xy
end