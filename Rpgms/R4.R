student=data.frame(
  name=c("Balu","Nimsha","Nazah","Ajay"),
  mark=c(34,45,32,23),
  dob=as.Date(c("2000-03-23","2001-12-17","2000-08-04","2000-10-20"))
)
student
student[1]
student[["mark"]]
student$name
student$dob
student<-rbind(student,c("Abhilash",39,"2001-03-29"))
student
student<-cbind(student,age=c(24,21,20,23,22))
student
student[-c(2),]
student[1,4]
student[c(1,3),]


#Write a R program to create a data frame from four given vectors. 
#Get the statistical summary and structure of the above data frame.
v1<-c(32,54,7,45)
v2<-c("aaf","srgr","reg","sdcfg")
v3<-c(3,35,65,21)
v4<-c("we","will","go","there")
datafr<-data.frame(v1,v2,v3,v4)
datafr
summary(datafr)
str(datafr)

#Write a R program to create a Data Frames which contain details of 5 employees. 
emp<-data.frame(
  name=c("Balu","Nimsha","Nazah","Ajay","Abhilash"),
  age=c(32,54,32,54,34),
  dob=as.Date(c("2000-03-23","2001-12-17","2000-08-04","2000-10-20","2000-05-27")),
  section=c("HR","Sales","Marketing","Sales","HR")
)
emp
#Extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.
emp[c(3,5),c(1,3)]
# Add a new row and a column in employee data frame. 
#Also illustrate how row/columns can be removed.
emp<-rbind(emp,c("Pooja",32,"2002-02-23","HR"))
emp<-cbind(emp,salary=c(123,234,345,456,567,678))
emp
emp[-c(3),-c(5)]
#Illustrate how two data frames can be combined horizontally and vertically.
comb1<-cbind(emp,student)

dff<-data.frame(
  id=c(1:7),
  weight=c(20,27,24,22,23,25,28),
  gender=c("male","female","female","male","male","female","male"),
  smoking=c("no","yes","no","yes","yes","no","yes"),
  tumour=c("small","large","medium","large","medium","large","small")
)
df2<-data.frame(dff$id,dff$tumour)
df2
