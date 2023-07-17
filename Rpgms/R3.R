#vector-same type, single dimension(c=>combine); atomic vector
#list-one dimension, hetero; list is a kind of vector
#array->2D, homo
#matrix-2D, homo
#data frame-2D, hetero
----------------------------
#vector operations
########################

a<-c(23,45)
class(a)
typeof(a)
a<-as.integer(a)
class(a)
typeof(a)
b<-2:8
b
c<-seq(3,12)
c
d<-seq(3,12,by=2)
d
e<-seq(1,10,length.out=6)
e
a1<-c(29,4)
a2<-c('d','ew')
a3<-as.integer(c(23,7))
class(a1)
class(a2)
class(a3)
sample (c(1:10), size=6, replace =T)
a<-c(32,26,83)
b<-c(TRUE,FALSE,TRUE)
a[b]
a[c(TRUE,FALSE,TRUE)]
a[2]
b2<-c(45,78,12,64,32,26,83)
b2[3:6]
b2[c(3,7)]
b2[-2]
b2[c(-2,-5)]
#assign index in vector
a5<-c("apple"=1,"mango"=2,"orange"=3)
a5["apple"]
#combining vectors
m<-c(a,b)
m

#Write a R program to create a vector which contains 10 random integer values between -50 and +50.
sample(c(-50:+50),size=10)

#Write a R program to find the maximum and the minimum value of a given vector.
a<-c(2:12)
a
max(a)
min(a)

#Write a R program to create three vectors numeric data, character data and logical data. 
#Display the content of the vectors and their type.
a1<-c(29,4)
a2<-c('d','ew')
a3<-c(TRUE,FALSE)
class(a1)
class(a2)
class(a3)

#Create vector with elements from 5 to 9 incrementing by 0.4. 
#Test whether a given vector contains a specified element.
b<-seq(2,10,by=0.4)
b

#Write a R program to add 3 to each element in a given vector. Print the original and new vector
b
k<-b+3
k

#name the contents of the vector
vec<-c(1,2,3,4,5,6)
names(vec)<-c("ab","bc","cd","de","ef","fg")
names(vec)

-----------------------------
#list operations
#############################
l1<-list(1,2,3)
v1<-c(2,45,321)
v2<-c('fe','er','gf')
v3<-c(TRUE,FALSE)
l1<-list(v1,v2,v3)
l1
l2<-list(12,c(21,43,7),c('w','sf'),'eesads')
l2

#Create a list of 5 strings. Check whether an item exists in the list. 
#Illustrate addition and removal of an item in the list.
li<-list('hi','hello','hey','you','go')
'hey' %in% li
li[2]=NULL
li
li[5]='sdhg'
li

#Create a list containing strings, numbers, vectors and a logical value.