%% Videjas vertibas aprekins
t = 0:0.01:7;
N = length(t);
xvid3a = 1/(N-1) * sum(lab3_demo_fun1(t(1:end-1)))
xvid3b = 1/(N-1) * sum(lab3_demo_fun1(t(2:end)))
h = 0.01
xvid3c = 1/(N-1) * sum(lab3_demo_fun1(t(1:end-1)+h/2))
xvid4 = 1/(N-1) * ((lab3_demo_fun1(t(1)) + lab3_demo_fun1(t(end)))/2 + sum(lab3_demo_fun1(t(2:end-1))))
% ista videja vertiba(100%)
syms t_sin
A0=0; A=-3; T = (2.5-1)/6; f = 1/T;
delay = 1;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
int_sin=int(y_sin,t_sin,5,6.5)
syms t_saw
k = (0-2)/(0-1);
delay = 0.5;
y_saw = k*(t_saw-delay);
int_saw=int(y_sin,t_sin,0,1)
syms t_const
y_const = -3;
int_const=int(y_sin,t_sin,1,3)
% 1
ista_vv =double(1/(t(end))*(int_saw+int_const+int_sin))