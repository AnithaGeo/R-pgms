print(getwd())
setwd("D:/R")
print(getwd())
dff<-read.csv("data1.csv")
print(dff)
summary(dff)
str(dff)
is.data.frame(dff)
print(ncol(dff))
print(nrow(dff))
sal<-max(dff$salary)
sal
q<-subset(dff,salary==max(salary))
q
q<-subset(dff,dept=="Operations")
q
write.csv(q,"output.csv")
newdata<-read.csv("output.csv")
newdata



data()
Co2
co2
View(co2)
mydata<-CO2
mydata
?co2
dim(mydata)
names(mydata)
