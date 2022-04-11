def forwardSub(L, b):
    x = []
    for i in range(len(b)):
        x.append(b[i])
        for j in range(i):
            x[i] = x[i] - (L[i][j] * x[j])
        x[i] = x[i] / L[i][i]
    return x

L = [[1,0],[0.2, 1]]
b = [1, 1]

print("Test 1: ")
x = forwardSub(L, b)
print("The Solution is: ", x)

L = [[5, 2],[0, 1.6]]
b = [1, 1]

print("Test 2: ")
x = forwardSub(L, b)
print("The Solution is: ", x)

L = [[7,1],[0, 3.9]]
b = [2, 2]

print("Test 3: ")
x = forwardSub(L, b)
print("The Solution is: ", x)
