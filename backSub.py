import numpy as np

def bSub(A,B):
    n = len(A)
    r = [0]*n
    for i in range(n-1,-1,-1): 
        for j in range(i+1,n):
            B[i] = B[i] - A[i,j]*r[j]
        r[i] = B[i]/A[i,i]

    return r
    
A = np.matrix([[1,0],[0.2, 1]])
B = np.array([1, 1])
print("Test 1: ")
x = bSub(A, B)
print("Solution: ", x)

A = np.matrix([[5, 2],[0, 1.6]])
B = np.array([1, 1])
print("Test 2: ")
x = bSub(A, B)
print("Solution: ", x)

A = np.matrix([[7,1],[0, 3.9]])
B = np.array([2, 2])
print("Test 3: ")
x = bSub(A, B)
print("Solution: ", x)