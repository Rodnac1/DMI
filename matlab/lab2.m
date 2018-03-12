%2.laboratorijas darbs
%Konstantins Glaskovs 171REB115 - REBC04, 1.kurss
%1.uzd. atrisinat vienadojumu a*x^2+b*x+c=0 
syms a b c x
y = solve(a*x^2+b*x+c==0,x)
pretty(y)
%2.uzd atrast F'(x)= ?
% f(x)= x^(sin(x)), x[0,10]
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
%Secinajums:
% Panemu savu darbu uzdevumu no ortusa
%Ar komandu syms pievienoju mainigus a b c x
% Ar komandu solve atrisinaju vienadojumu 
% ar komandu pretty izveidoju skaistaku formu)))
%2 dala man bija izteiksme f(x)= x^(sin(x)), x[0,10], F'(x)= ?,
%1)jātrod atvasinājums y_atv=diff(y)
%2)Ar komandu x=[0:0.01:10]; defineju x skaitla vektoru
%3)jāveic izteiksmju vektorizācija y_vect = vectorize(y)
%y_atv_vect = vectorize(y_atv)
%4) izmantot eval interpretatoru y_num = eval(y_vect);
%y_num_atv = eval(y_vect_atv);
%5) ar komandu plot uzzimesim grafiku
%6)xlim ylim - grika diapazons
%7)anotācija katrai līknei - y_ltx = latex(y);
%y_atv_ltx = latex(y_atv);