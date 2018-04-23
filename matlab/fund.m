function fx = fund(UR)
% i0 = 1; a=1; Us=1; R=1;
global Us a R i0
fx = - 1/R - a*i0*exp(a*(Us - UR));