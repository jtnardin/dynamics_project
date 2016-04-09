
a = 1;
alpha = .2;
c = a/sqrt(2)*(1-2*alpha)

x0 = [1e-8 1e-8]

% c = 0

colors = 'bgrkmc';

c = [0 .40 0.421568252502405 a/sqrt(2)*(1-2*alpha) .43 .6];

figure
hold on

for i = 4


    [t,y] = ode45(@(t,y) bistable_ode(t,y,[c(i),a,alpha]),[0 100],x0);

    plot(y(:,1),y(:,2),colors(i))

end

plot([-1 3],[0 0],'k')

legend(['c = ' num2str(c(1))],['c = ' num2str(c(2))],['c = ' num2str(c(3))],['c = ' num2str(c(4))],['c = ' num2str(c(5))],['c = ' num2str(c(6))],'location','northwest')

axis([0 1.1 -.02 .3])

xlabel('U')
ylabel('W')

title('Heteroclinic orbit for bistable equation')

% exportfig(gcf,'bistable_pp.eps');