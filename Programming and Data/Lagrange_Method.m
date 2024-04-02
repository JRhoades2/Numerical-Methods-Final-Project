clear; close all;
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
% load Final_Project_WO_Dust_1.txt
% load Final_Project_WO_Dust_2.txt
% load Final_Project_WO_Dust_3.txt
% 
% time = (Final_Project_WO_Dust_1(:,1));
% temp1 = (Final_Project_WO_Dust_1(:,2));
% temp2 = (Final_Project_WO_Dust_2(:,2));
% temp3 = (Final_Project_WO_Dust_3(:,2));
% 
% z = linspace(0,900,50);
% 
% p1 = polyfit(time,temp1,50);
% pz1 = polyval(p1,z);
% 
% p2 = polyfit(time,temp2,50);
% pz2 = polyval(p2,z);
% 
% p3 = polyfit(time,temp3,50);
% pz3 = polyval(p3,z);
% 
% X = time;
% 
% 
% plot(X,temp3,'b')
% hold on
% plot(z,pz3,'c','linewidth',2)
% hold on
% plot(X,temp2,'Y')
% hold on
% plot(z,pz2,'m','linewidth',2)
% hold on
% plot(X,temp1,'r')
% hold on
% plot(z,pz1,'g-','linewidth',2)
% axis([0 900 20 40]);
% legend('Exp. Flow in','Lag. Flow in','Exp. Temp by CPU & GPU','Lag Temp by CPU & GPU','Exp. Flow out','Lag. Flow Out')
% title('Lagrange Polynomial Fit on Experiemental Data with Dust')
% xlabel('Time(s)')
% ylabel('Temperature({\circ}C)')


%Use a time interval of [0,5] and the initial condition y0 = 0.
tspan = 0:0.2:1;
y0 = 0;
format long
[t,y] = ode45(@(t,y) y + sin(t), tspan, y0);
plot(t,y,'o')
