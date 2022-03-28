%1st test problem
U = [1,0; .2, 1];
z = [1; 1];
disp("Test #1:");
x = b_sub(U, z);
fprintf("Solution: %2.4f\n", x);
r = (U*x) - z;
fprintf("Residual: %2.4f\n", r);
%2nd test problem
U = [5, 2; 0, 1.6];
z = [1; 1];
disp("Test #2:");
x = b_sub(U, z);
fprintf("Solution: %2.4f\n", x);
r = (U*x) - z;
fprintf("Residual: %2.4f\n", r);
%3rd test problem
U = [7, 1; 0, 3.9];
z = [2; 2];
disp("Test #3:");
x = b_sub(U, z);
fprintf("Solution: %2.4f\n", x);
r = (U*x) - z;
fprintf("Residual: %2.4f\n", r);
%backward subsitiution function
function x = b_sub(U, z)
S=size(U);
m=S(1);
x=zeros(1,m);
x(1,m)=z(end)./U(m,m);

for k=m-1:-1:1
    x1=1/U(k,k).*(z(k)-sum(U(k,k+1:end).*x(k+1:end)));
    x(k)=x1;
end
x=x';
end
