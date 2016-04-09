function cost = bistable_eqn_cost(c)


a = 1;
alpha = .2;
x0 = [1e-8 1e-8];

[t,y] = ode45(@(t,y) bistable_ode(t,y,[c,a,alpha]),[0 400],x0);

res = y(end,:) - [1 0];

cost = res*res';

end