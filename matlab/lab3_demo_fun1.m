%% 3 Laboratorijas darbs
% Konstantins Glaskovs 171REB115 - REBCO4, 1.kurss
%% Gabalveida sign?la mont???
%% Sinuso?da
% t_sin = 5:0.01:6.5;
% y_sin = A0+A*sin(2*pi*f*(t-delay))
% A0 = 0; A = -3; T = (2.5-1)/6; f = 1/T; delay = 1;
% y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
% plot(t_sin,y_sin)
%% Line?ri main?gs sign?ls
% t_saw = 0:0.01:1;
% y_saw = k*t(t_saw-delay)
% yA = 0; yB = 2; tA = 0; tB = 1; delay = 0.5;
% k = (yA-yB)/(tA-tB)  %l?knes sl?puma koeficents
% delay - lai noteiktu delayr ir j?skat?s krustpunkts ar t asi (y=0)
% y_saw = k*(t_saw-delay);
% plot(t_saw,y_saw)
%% Konstantes sign?ls
% t_const = 1:0.01:3;
% y_const = zeroes(1,1) - 3;
% y_const = ones(1,1)*3;
% nav korekti, ja t_const izmain?s, tad y_const nemain?sies
% y_const = zeros(size(t_const)); y_const = zeros(size(t_const));
% plot(t_const,y_const)
%% Nulles signals
% t_zero = 3:0.01:5;
% y_zero = zeros(size(t_zero)) -3;
%% trok??a sign?ls
% t_noise = 6.5:0.01:7;
% y_noise = rand(size(t_noise)) * 3 - 1.5;
% plot(t_noise,y_noise)
%% Sign?lu apvieno?ana
% t = [t_saw,t_const,t_zero,t_sin,t_noise];
% y = [y_saw,y_const,y_zero,y_sin,y_noise];
% plot(t,y)
% ylim([-3 3])
% grid on
function y = lab3_demo_fun(t)
%t = 0:0.01:7;
%t_zero = 3:0.01:5;
t_zerof=(t>=3)&(t<5);t_zero = t(t_zerof);
%t_sin =5:0.01:6.5;
t_sinf=(t>=5)&(t<6.5);t_sin=t(t_sinf);
%t_noise = 6.5:0.01:7;
t_noisef=(t>=6.5)&(t<=7);t_noise=t(t_noisef);
%t_const = 1:0.01:3;
t_constf=(t>1)&(t<3);t_const=t(t_constf);
%t_saw = 0:0.01:1;
t_sawf = (t>=0)&(t<=1);t_saw=t(t_sawf);
%% sinusoīda
%y_sin=A0+A*sin(2*pi*f*(t-delay))
A0=0; A=-3; T = (2.5-1)/6; f = 1/T;
delay = 1;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
%% Lineāri mainīgs signāls
% k = (yA-yB)/(tA-tB)
% slīpuma koeficients
k = (0-2)/(0-1);
delay = 0.5;
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)
%% konstantes signāls
y_const = zeros(size(t_const));
%plot(t_const,y_const)
%% nulles signāls
y_zero = zeros(size(t_zero))-3;
%plot(t_zero,y_zero)
%% trokšņa signāls
y_noise = 3*rand(size(t_noise))-1.5;
%plot(t_noise,y_noise)
%% signālu apvienošana
% t = [t_saw,t_const,t_zero,t_sin,t_noise];
y = [y_saw,y_const,y_zero,y_sin,y_noise];
plot(t,y)
ylim([-3.5 3.5]);
xlim([0 7.5]);
grid on
%% Secinajumi
% Bija uzdevums izdarit signalu gabalveidu montazu pec atseviska varianta:
% sinusoida,troksna,nulles, konstantes un lineara signali ar komandiem:
% t_saw,t_const,t_zero,t_sin,t_noise
% Un y_saw,y_const,y_zero,y_sin,y_noise.
% No dota grafika paniemu katra signalu koordinatus un tos ieliku scripta.
% ar komandu f=(t>=5)&(t<6.5).
% Pec tam izvedoju vinam limitus pec y asi ar daziem funkcijam.
% pec tam apvienoju signalus ar komandu 
% t = [t_saw,t_const,t_zero,t_sin,t_noise];
% y = [y_saw,y_const,y_zero,y_sin,y_noise];
% Un uzzimeju grafiku ar komandu plot.
% Talak izveidoju funkciju function y = lab3_demo_fun(t).