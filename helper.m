function [boolean, kount] = helper(zk, const, fixpt1, fixpt2)
    iflag1 = 0; iflag2 = 0; kount = 0;
    while (kount < 30) && (abs(zk) < 100) && (iflag1 < 5) && (iflag2 < 5)
        kount = kount + 1;
        zk = zk ^ 2 + const;     
        err1 = abs(zk - fixpt1);
        if err1 < 1e-6, iflag1 = iflag1 + 1; else iflag1 = 0; end;      
        err2 = abs(zk - fixpt2);
        if err2 < 1e-6, iflag2 = iflag2 + 1; else iflag2 = 0; end;
    end
    if (kount >= 30) || (iflag1 >= 5) || (iflag2 >= 5)
        boolean = true;
    else 
        boolean = false; 
    end;
end