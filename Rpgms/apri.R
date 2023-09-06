library(arules)
library(arulesViz)
md<-read.transactions("D:/dataset R/aprioridata.csv",sep=",")
inspect(md)
aoctn_rl<-apriori(md,list(support=0.04,confidence=0.2))
inspect(sort(aoctn_rl,by="lift")[1:5])
plot(aoctn_rl,method = "graph",measure = "confidence",shading = "lift")


md<-read.transactions("D:/dataset R/ref.csv",format="single",sep=",",header=TRUE,cols=c("tid","item"))
inspect(md)
aoctn_rl<-apriori(md,list(support=0.04,confidence=0.9))
inspect(sort(aoctn_rl,by="lift")[1:2])
plot(aoctn_rl,method = "graph",measure = "confidence",shading = "lift")

mk<-read.transactions("D:/dataset R/bask.csv",format="single",sep=",",header=TRUE,cols=c("transid","item"))
inspect(mk)





