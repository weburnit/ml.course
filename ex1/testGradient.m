A = randn(10);
x =randn(10,1);
v = zeros(10, 1);
z = 0;
for i = 1:10
  z = z + A(i) * x(i);
end