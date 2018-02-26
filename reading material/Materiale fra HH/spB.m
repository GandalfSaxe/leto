function spB()

clear all, clc, format compact

disp('6.1)')
disp('d/dt z = [')
disp('         z(3);')
disp('         z(4);')
disp('         a*z(1) + b + 2*Omega*z(4);')
disp('         c*z(2) - 2*Omega*z(3);')
disp('        ];')

disp('6.2)')
disp('6.3)')
tspan=[0 2.4e6];
z0=[4.613e8;0;0;-1074]';
[t,y]=ode45(@odefun,tspan,z0);

figure(1), clf;
xlabel('x'); ylabel('y');
plot(y(:,1),y(:,2),':og'); 
hold on;
l=4.669e6;
L=3.844e8;
plot(-l,0,'bo','Markerfacecolor','b');
plot(L,0,'w*');

set(gcf, 'color', 'black'); axis off;
set(gcf, 'color', [0.8 0.8 0.8]); axis on;

%6.2
function dzdt = odefun(t,z)
x = z(1);
y = z(2);
[a,b,c] = parametre_sp6(x,y);
Omega = 2.661e-6;
dzdt = [
         z(3);
         z(4);
         a*z(1) + b + 2*Omega*z(4);
         c*z(2) - 2*Omega*z(3);
        ];

    