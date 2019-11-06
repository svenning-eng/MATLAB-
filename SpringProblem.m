dt = 0.05;
x(1) = 0;
x(2) = 0.1;
m = 2;
ks = 10;
d = 1;
x_dot(1) = (-ks/m)*x(2)-d/m*x(1);
x_dot(2) = 0;
t0 = 0;
sum = 0;
x = spring_function(x,x_dot,dt)
y(1,1) = x(1);
y(2,1) = x(2);
n = 1000;
w(1)=y(2,1)
for k = 1:n
    t(k) = t0+dt
    x_dot(1) = (-ks/m)*x(2)-d/m*x(1);
    t0 =t(k);
    x_dot(2) = x(1)
    x = spring_function(x,x_dot,dt)
    y(1,k+1) = x(1)
    y(2,k+1) = x(2)
    w(k+1) = y(2,k+1)
end
t
plot(w)
function out = spring_function(x,x_dot,dt)
out = dt*x_dot+x
end

