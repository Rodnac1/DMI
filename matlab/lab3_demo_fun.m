function y = lab3_demo_fun(t)
%t = 0:0.01:8;

%t_zero = 0:0.01:1;
t_zero_f = (t>=0)&(t<1); t_zero = t(t_zero_f);
%t_sin = 1:0.01:2.5;
t_sin_f = (t>=1)&(t<2.5); t_sin = t(t_sin_f);
%t_noise = 2.5:0.01:4.5;
t_noise_f = (t>=2.5)&(t<4.5); t_noise = t(t_noise_f);
%t_const = 4.5:0.01:6.5;
t_const_f = (t>=4.5)&(t<6.5); t_const = t(t_const_f);
%t_saw = 6.5:0.01:8;
t_saw_f = (t>=6.5)&(t<=8); t_saw = t(t_saw_f);
%% Gabalveida signāla montāža
%% Sinuoīda
% y_sin = A0+A*sin(2*pi*f*(t-delay))
A0 = 0; A = 2.5; T = (2.5-1)/3.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%% Lineāri mainīgs signāls
% y_saw = k*(t_saw - delay)
% k = (yA - yB)/(tA - tB) - līknes slīpuma koeficients
% delay - lai noteiktu delay ir jāskatās  krustpunkts ar t/x asi (y=0)
k = (2.5-(-2.5))/(6.5-8); delay = 7.25;
y_saw = k*(t_saw - delay);
%% Konstantes signāls
y_const = zeros(size(t_const))+2.5;
%% Nuļļu signāls
y_zero = zeros(size(t_zero));
%% Trokšņa signāls
y_noise = rand(size(t_noise))*3-1.5;
%% Signālu apvienošana
y = [y_zero,y_sin,y_noise,y_const,y_saw];
