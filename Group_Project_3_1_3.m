% 3rd Test Problem %
L = [7, 1; 0, 3.9];
b = [2; 2];

z = forward_sub(L, b);
fprintf("The First Solution is %2.3f:\n", z);

residual = (L*z) - b;
fprintf("The First Residual is %2.3f:\n", residual)

function z = forward_sub(L,b)
n = length(b);
z = zeros(n, 1);

for j = 1 : n - 1
    if (L(j,j) == 0)
        error('Wrong Input')
    end
    z(j) = b(j) / L(j,j);
    b(j + 1: n) = b(j + 1: n) - L(j + 1:n, j) * z(j);
end
    z(n) = b(n) / L(n,n);
end