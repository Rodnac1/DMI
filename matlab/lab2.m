%%1
syms a b c x
y = solve(a*x^2+b*x+c==0,x)
pretty(y)
%%2
syms x;
y = (x^(sin(x)))
y_atv = diff(y)
x=[0:0.01:10];
y_vect = vectorize(y);
y_vect_atv = vectorize(y_atv);
y_num = eval(y_vect);
y_num_atv = eval(y_vect_atv);
plot(x,y_num,x,y_num_atv)
xlim([0 10]);
ylim([-10 10]);
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h = legend(['$', y_ltx, '$'], ['$', y_atv_ltx,'$']);
set(h, 'Interpreter', 'latex');