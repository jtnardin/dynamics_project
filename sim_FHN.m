
a = 2;
alpha = .1;
eps = 1e-2;
gamma = 0.5;
I = 0.5;

% x0 = [0.15 0];
x0 = [0.4 0];

w = -3:.01:3;

f = @(u) a*u.*(u-1).*(alpha-u) + I;
null2 = @(u) 1/gamma*u;

[t,y] = ode45(@(t,y) ode_FHN(t,y,[gamma,eps],f),[0 10],x0);

figure
hold on
plot(y(1,1),y(1,2),'k.','markersize',10)
plot([-1 3],[0 0],'k')
plot(w,f(w),'r')
plot(w,null2(w),'color',[0 .5 0])
axis([-.4 1.3 -.1 1])

xlabel('U')
ylabel('W')

title('FHN in the phase plane')


for i = 1:15:1865
h1 = plot(y(1:i,1),y(1:i,2),'b-','linewidth',2);
h2 = plot(y(i,1),y(i,2),'k.','markersize',20);
pause(.125)
delete(h1)
delete(h2)
end