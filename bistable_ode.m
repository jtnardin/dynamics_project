function uprime = bistable_ode(t,u,q)

    uprime = zeros(2,1);

    f = @(u) q(2)*u*(u-1)*(q(3)-u);

    uprime(1) = u(2);
    uprime(2) = q(1)*u(2)-f(u(1));


end