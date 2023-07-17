# i. Write a R program to create a matrix taking a given vector of numbers as input. 
#Display the matrix and define the column and row names. 
#Display the matrix. 
mat1 <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)

print(mat1)

rownames(mat1) <- c("R1","R2","R3")
colnames(mat1) <- c("C1","C2","C3")

print(mat1)

# ii. Write a R program to create three vectors a,b,c with 3 integers. 
#Combine the three vectors to become a 3×3 matrix where each column represents a vector. 
#Print the content of the matrix.
a <- c(1,2,3)
b <- c(4,5,6)
c <- c(7,8,9)

mat2 <- matrix(c(a,b,c),nrow = 3,ncol = 3)

print(mat2)

mat2[1,2]

a <- c(1,2,3,4)
b <- c(5,6,7,8)
c <- c(9,10,11,12)
d <- c(13,14,15,16)

mat3 <- matrix(c(a,b,c,d),nrow = 4,ncol = 4)

print(mat3)

#iii. Illustrate how a matrix item, a column or a row is accessed in R. 
#Also, display the 2nd and 4th row with 1st and 3rd column for the matrix.
print(mat3[c(2,4),c(1,3)])

print(mat3)
mat3[2,3]
mat3[2,]
mat3[,2]
mat3[c(2,3),]
mat3[2:4,]

#iv. Illustrate how a row and a column can be added or removed.
mat3 <- rbind(mat3,c(17,18,19,20))
mat3 <- cbind(mat3,c(100,101,102,103,104))

print(mat3)

mat4<-mat3[-c(2),]
print(mat4)
as.vector(mat4)

#i Write a R program to create a 3X3- 3-dimensional array of 27 elements.
arr <- array(c(c(1:9),c(10:18)),dim = c(3,3,2))

print(arr)

arr_1 <- array(c(1:27),dim = c(3,3,3))

print(arr_1)

#ii    Name the rows, columns and the matrices.

column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2","Matrix 3")

arr_1 <- array(c(1:27),dim = c(3,3,3),dimnames = list(row.names,column.names,
   matrix.names))

print(arr_1)

#iii   Write a R program to create an array of four 4x4 matrices each with 4 rows and 4 columns from two given vectors. 
#Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.

a <- c(1:16)
b <- c(17:32)
c<-c(33:48)
d<-c(49:64)

arr_2 <- array(c(a,b,c,d),dim = c(4,4,4))

print(arr_2)

print(arr_2[2,,2])

print(arr_2[3,3,1])


