% part 3 julia set
function L = part3(const)
    L = [];
    fixpt1 = (1 + sqrt(1 - 4 * const))/2;
    fixpt2 = (1 - sqrt(1 - 4 * const))/2;   
    m = 2 * round(abs(fixpt1)) + 1;
    n = 2 * round(abs(fixpt2)) + 1; 
    iter = 0;
    while iter < 1000
        iter = iter + 1;
        x = - m + (randi(200 * m) - 1) * .01;
        y = - n + (randi(200 * n) - 1) * .01;
        zk = x + 1i * y;
        kount = 0;
        while kount < 30
            kount = kount + 1;
            r = sqrt((real(zk) - real(const)) ^ 2 + (imag(zk) - imag(const)) ^ 2);
            theta = atan(((imag(zk) - imag(const)) / (real(zk) - real(const))));
            if (real(zk) - real(const)) < 0
                theta = theta + pi;  
            end
            zk = (- 1) ^ randi(2) * sqrt(r) * (cos(theta/2) + 1i * sin(theta/2));     
        end
        L = [L, zk];
    end
    plot(L, 'o');
end