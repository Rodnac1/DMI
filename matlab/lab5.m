function lab5
global Us a R i0
a = 1; R= 1; i0= 1;
% Seit ir jaliek savu diode
% a.i0
t = 0:0.01:1
Ust = 100*cos(2*pi*t);
Signals
URt = [];
for Us = Ust
    UR = newmet5
    URt = [URt,UR];
end
plot(t,Ust,t,URt)