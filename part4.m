% part 4 box counting
function part4(imag)
    c = imread(imag);
    [n, r] = boxcount(c, 'slope')
    loglog(r, n,'bo-', r, (r/r(end)).^(-2), 'r--')
end
