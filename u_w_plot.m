%plot U and W

a = 1;
alpha = .2;

x0 = [1e-8 1e-8]

c = a/sqrt(2)*(1-2*alpha);

% figure
% hold on

for i = 4


    [t,y] = ode45(@(t,y) bistable_ode(t,y,[c,a,alpha]),[0 100],x0);

%     plot(y(:,1),y(:,2))

end

% axis([0 1.1 -.02 .3])

res = y - [ones(373,1) zeros(373,1)];

res = abs(res(:,1)) + abs(res(:,2));

z = find(res==min(res));


figure
hold on
plot(y(1:z,1))
plot(y(1:z,2),'k')

set(gca,'xticklabel',[])


title('U and W profiles')
xlabel('z')

legend('U','W','location','northwest')

exportfig(gcf,'UW_plot.eps')