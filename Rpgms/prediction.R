data<-read.csv("E:/Rpgms/heart.data.csv")
View(data)
library(caTools)
split = sample.split(Y = data$heart.disease, SplitRatio = 0.7)
train = data[split,]
test = data[!split,]
lmodel<-lm(heart.disease~biking+smoking,data=train)
pred<-predict(lmodel,test)
pred
summary(pred)
summary(data)


mt<-data.frame(mtcars)
mt
