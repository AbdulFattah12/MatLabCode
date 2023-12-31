import numpy as np
from sympy import *
from numpy import linalg 
## Given Info
## lets A is our square matrix [[4 -5],[2 -3]]
A = np.array([[4, -5], [2, -3]])

## Find EigValue and EigMatrix from the given Matrix
## We will utilized linalg package from numpy python to find the EigValue and EigMatrix
EigValue, EigMatrix = linalg.eig(A)

## EigValue = 2, -1

## To Calculate the EigSpace Matrix
## first row of EigSpace matrix, we need to put lmda equal to 2 
V1 = np.zeros((2,2))
for i in range(len(EigValue)):
    V1[i,i] = EigValue[0]
## display the Matrix    
print(f"To calculate the first vector of Eig Space Matrix put the lmda 2 in the diagonal of the Matrix \n{V1}") 
w = A-V1
## display w
print(f"output after putting lmda 2 \n {w}")

## Now we need to reduce the matrix by dividing the row 1 by 2
## R1/2-->R1
w[0,0], w[0,1] = w[0,0]/2, w[0,1]/2

## Display the matrix
print(f"output after dividing by 2 \n {w}")

## Now we need to reduce the matrix by R2-2R1
## R2-2R1-->R2
w[1,0], w[1,1] = w[1,0]-2*w[0,0], w[1,1]-2*w[0,1]
print(f"output after  2R1 \n {w}")
x1 = symbols('x1')
x2 = symbols('x2')
print(f"Now the final equation \n{w[0,0]*x1+w[0,1]*x2} \n so x1=2.5x2 let if x2 = 2 then x1 = 5")
v1 = np.array([5, 2])
print(f"display the vector v1 ={v1}\n\n\n")


## Now the repeat the same step for lmda -1
V2 = np.zeros((2,2))
for i in range(len(EigValue)):
    V2[i,i] = EigValue[1]
## display the Matrix    
print(f"Put 2 in Matrix \n{V2}") 
w = A-V2
## display w
print(f"To calculate the second vector of Eig Space Matrix put the lmda -1 in the diagonal of the Matrix \n {w}")

## Now we need to reduce the matrix by dividing the row 1 by 2
## R1/2-->R1
w[0,0], w[0,1] = w[0,0]-2*w[1,0], w[0,1]-2*w[1,1]

## Display the matrix
print(f"output after dividing by 2R2 \n {w}")

## Now we need to reduce the matrix by R2-2R1
## R2-2R1-->R2
w[1,0], w[1,1] = w[1,0]-2*w[0,0], w[1,1]-2*w[0,1]
print(f"output after  2R1 \n {w}")
x1 = symbols('x1')
x2 = symbols('x2')
print(f"Now the final equation \n{w[0,0]*x1+w[0,1]*x2} \n so x1=1.x2 let if x2 = 1 then x1 = 1")
v2 = np.array([1, 1])
print(f"display the vector v2 ={v2}")


## step to calculate unit vector for v1
u1 = v1

## Find the magnitude of Unit vector 1
M_u1 = sqrt(np.dot(u1,u1))

## Final orthogonal basis of vector 1
e1 = (1/M_u1)*u1

## Display unit vector of v1
print(f"orthogonal basis of vector 1 \n{e1}\n")

## Now to calculate the unit vector 2 
## We need to calculate the projection of v2 [1, 1] on v1 vector [5 2]
## Equation for projection Proju-->v2 = ((v2.v1)/|v1|^2).v1
## dot prod of v2 and v1
v2_v1 = np.dot(v2,v1)

## magnitude of v1
m_v1 = sqrt(np.dot(v1,v1))

## Now we have dot pro of v2 and v1 and magnitude of v1
## calculate projU on v2 = ((v2.v1)/|v1|^2).v1 
pU_v2 = (v2_v1/m_v1**2)*v1

## Display the project of v1 on v2
print(f"ProjU on v2 \n{pU_v2}\n")

## Now we need to find unit vect 2 by  substract the v2 - project of U on v2
u2 = v2-pU_v2

## Find the Magnitude of U2
M_u2 = sqrt(np.dot(u2,u2))

## Final orthogonal basis of vector 2
e2 = (1/M_u2)*u2

## Display unit vector of v1
print(f"orthogonal basis of vector 2 \n{e2}")

## Now we put orthogonal basis in a matrix form
P = np.zeros((2,2))
P[:, 0] = e1
P[:, 1] = e2

## Verify that P.T = P_inv
## display P.T 
print(f"\n\nP transpose Matrix \n{P.T}")

## Display P_inv so we are using numpy to calculate the invers of P
Inv_P = linalg.inv(P)
print(f"\n\nP Inverse Matrix \n{Inv_P}\n As we have seen that P.T == Inv_P")

## Verify A = PDP.T = PDP_inv
## dispaly orignal matrix A
print(f"\n\nMatrix A \n {A}")