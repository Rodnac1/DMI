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