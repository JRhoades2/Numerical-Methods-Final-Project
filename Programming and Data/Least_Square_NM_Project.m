clear;close all;
%Lagrange interpolation for Final Project
%With Dust Data
% load Final_Project_W_Dust_12.txt
% load Final_Project_W_Dust_22.txt
% load Final_Project_W_Dust_32.txt
% 
% time = (Final_Project_W_Dust_12(:,1));
% temp1 = (Final_Project_W_Dust_12(:,2));
% temp2 = (Final_Project_W_Dust_22(:,2));
% temp3 = (Final_Project_W_Dust_32(:,2));

%Without Dust Data
load Final_Project_WO_Dust_1.txt
load Final_Project_WO_Dust_2.txt
load Final_Project_WO_Dust_3.txt

time = (Final_Project_WO_Dust_1(:,1));
temp1 = (Final_Project_WO_Dust_1(:,2));
temp2 = (Final_Project_WO_Dust_2(:,2));
temp3 = (Final_Project_WO_Dust_3(:,2));



X = time;

N =10;
A = [];
for i = 0:N
    A = [A,X.^i];
end
%H = [ones(length(Y),1),];
c = inv(A'*A)*A'*temp1;
y1 = A*c;
M = 10;
B = [];
for i = 0:M
    B = [B,X.^i];
end
%H = [ones(length(Y),1),];
b = inv(B'*B)*B'*temp2;
y2 = B*b;

C = [];
for i = 0:N
    C = [C,X.^i];
end
%H = [ones(length(Y),1),];
c = inv(C'*C)*C'*temp3;
y3 = C*c;

plot(X,temp3,'b')
hold on
plot(X,y3,'c','linewidth',2)
hold on
plot(X,temp2,'Y')
hold on
plot(X,y2,'m','linewidth',2)
hold on
plot(X,temp1,'r')
hold on
plot(X,y1,'g-','linewidth',2)
axis([0 900 20 40]);
legend('Exp. Flow in','L.S. Flow in','Exp. Temp by CPU & GPU','L.S. Temp by CPU & GPU','Exp. Flow out','L.S. Flow Out')
title('Least Squared Fit to Experiemental Data with Dust')
xlabel('Time(s)')
ylabel('Temperature({\circ}C)')