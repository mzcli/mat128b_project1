% part 7 newton
function M = part7(num)  
    fixpt1 = exp(2 * pi * 1i / num);
    fixpt2 = exp(4 * pi * 1i / num);
    fixpt3 = exp(6 * pi * 1i / num);
    M = 2 * ones(200, 200);
    for i = 1 : 200
        for j = 1 : 200
            x = - 1 + (i - 1) * .01;
            y = - 1 + (j - 1) * .01;
            zk = x + 1i * y;
            iflag1 = 0; iflag2 = 0; iflag3 = 0; kount = 0;
            while (kount < 30) && (abs(zk) < 100) && (iflag1 < 5) && (iflag2 < 5) && (iflag3 < 5)
                kount = kount + 1;
                zk = zk - (zk ^ num - 1) / (num * zk ^ (num - 1));     
                err1 = abs(zk - fixpt1);
                if err1 < 1e-6, iflag1 = iflag1 + 1; else iflag1 = 0; end;      
                err2 = abs(zk - fixpt2);
                if err2 < 1e-6, iflag2 = iflag2 + 1; else iflag2 = 0; end;
                err3 = abs(zk - fixpt3);
                if err3 < 1e-6, iflag3 = iflag3 + 1; else iflag3 = 0; end;
            end
            if iflag1 >= 5, M(j,i) = 1; end; 
            if iflag2 >= 5, M(j,i) = 2; end;  
            if iflag3 >= 5, M(j,i) = 3; end; 
    end
    colormap([1 0 0;0 1 0; 0 0 1; 1 1 1]);   
    image([-200, 200], [-200, 200], M);
    axis xy
end