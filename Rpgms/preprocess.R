View(airquality)
aq<-airquality
mean(aq$Solar.R)
mean(aq$Solar.R,na.rm = TRUE)#mean by removing na values
is.na(aq)
#missing values
aq$Solar.R<-ifelse(is.na(aq$Solar.R),mean(aq$Solar.R,na.rm = TRUE),aq$Solar.R)
aq
aq$Month<-sub('5','May',aq$Month)
aq$Month<-sub('6','June',aq$Month)
aq$Month<-sub('7','July',aq$Month)
aq$Month<-sub('8','August',aq$Month)
aq$Month<-sub('9','September',aq$Month)
aq
#aq$Month=month.name[aq$Month]
aq$danger<-aq$Solar.R>250
aq
aq$Month<-as.factor(aq$Month)
mean(aq$Ozone,na.rm = TRUE)
aq$Ozone<-ifelse(is.na(aq$Ozone),mean(aq$Ozone,na.rm = TRUE),aq$Ozone)
aq
library(caTools)
split=sample.split(aq,SplitRatio = 0.8)
aq
train_set<-subset(aq,split==TRUE)
test_set<-subset(aq,split==FALSE)
train_set
test_set
split
aq$Ozone<-scale(aq$Ozone)
aq$Solar.R<-scale(aq$Solar.R)
aq
library(ggplot2)
