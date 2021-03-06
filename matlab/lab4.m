%%
R1=1;R2=2;R3=3;R4=4;R5=5;R6=6;R7=7; E1=1;E2=2;E3=3;

R= [R1+R2+R3 -R2 0;-R2 R2+R4+R5 -R5;0 -R5 R5+R6+R7];
E = [E1;-E2;-E3];
Ik = R\E
%%
IR6 = Ik(3)
UR6 = R6*IR6
PR6 = IR6*UR6
%%
E1 = [1 -1 0];
E2 = [2 -2 0];
E3 = [3 -3 0];
E = [E1; -E2; -E3];
%
Ik = R\E
%
IR7 = Ik(3,:)
UR7 = IR7*R7
PR7 = UR7.*IR7
%
t = 0:0.01:1;
E3 = cos(2*pi*2*t);
E2 = 5*zeros(size(t));
E1 = sin(2*pi*5*t);
E = [E1; -E2; -E3];
I = R\E;
%
IR5 = I(3,:)-I(2,:);
UR5 = IR5*R5;
PR5 = UR5*R5;
plotyy(t,UR5,t,PR5)
legend('UR5','PR5')
% PARBAUDE
IR6=I(3,:);
UR6 = IR6*R6;
IR7=I(3,:);
UR7 = IR7*R7;
Utst = UR6+UR7+UR5+E3;
figure,plot(t,Utst)