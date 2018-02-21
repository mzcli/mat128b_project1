% part 4 two methods
function part4(imag)
    c = imread(imag);
    c = rgb2gray(c);
    [m, n] = size(c);
    l = [1 : 100];
    kount = zeros([1,100]);
    for k = 1 : 100
        for i = 1 : k : m
            for j = 1 : k : n
                if c(i, j) ~= 255
                    kount(k) = kount(k) + 1;
                end;
            end
        end
    end   
    hold on;
    [n, r] = boxcount(imag);
    loglog(r, n, '--r')
    loglog(l, kount, '--s');
    hold off;
end
