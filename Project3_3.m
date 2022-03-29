%First Test Problem
A= [1,0; .2,1];
b= [1; 1]; 

x=A\b;
fprintf("The First solution is %2.3f:\n", x)

residual = (A*x) -b;
fprintf("The first residual is %2.3f:\n", residual)

%Second Test Problem
A=[5,2; 0,1.6];
b=[1; 1];

x=A\b;
fprintf("The second solution is %2.3f:\n", x)

residual= (A*x) - b; 
fprintf("The first residual is %2.3f;\n", residual)

%Third Test Problem
A = [7,1; 0,3.9];
b=[2;2];

x=A\b;
fprintf("The Third Solution is %2.3f\n", x)

residual=(A*x) -b; 
fprintf("The Third Solution is %2.3f\n", residual)

%Number 4
A= rand(10, 10); 
b= [3;3]; 

x=A\b;
fprintf("The solution to Number four is %2.3f\n", x)

residual= (A*x) -b; 
fprintf("The residual to Number four is %2.3f\n", resdiual)


