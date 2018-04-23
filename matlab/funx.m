function fx = funx(UR)
% i0 = 1; a=1; Us=1; R=1;
global Us a R i0
fx = i0*(exp(a*(Us-UR))-1)-(UR/R);