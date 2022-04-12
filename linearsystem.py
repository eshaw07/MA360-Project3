def linearSystem(A, b):
    x = []
    for i in range(len(b)):
        x.append(b[i])
        for j in range(i):
            x[i] = x[i] - (A[i][j] * x[j])
        x[i] = x[i] / A[i][i]
    return x

A = [[1,0],[0.2, 1]]
b = [1, 1]

print("Test 1: ")
x = linearSystem(A, b)
print("The Solution is: ", x)


A = [[5,2],[0, 1.6]]
b = [1, 1]

print("Test 2: ")
x = linearSystem(A, b)
print("The Solution is: ", x)


A= [[7,1], [0, 3.9]]
b=[2,2]

print("Test 3: ")
x=linearSystem(A, b)
print("The Solution is: ", x)