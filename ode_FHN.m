function uprime = ode_FHN(t,u,q,f)


    uprime = zeros(2,1);
    
    uprime(1) = (1/q(2))*(f(u(1)) - u(2));
    
    uprime(2) = u(1) - q(1)*u(2);

end