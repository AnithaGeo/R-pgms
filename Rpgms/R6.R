#factors-------------------------
is.factor(dff$gender1)
dff$gender1<-factor(dff$gender1)
is.factor(dff$gender1)
dff$gender1[7]<-"TG"
levels(dff$gender1)
levels(dff$gender1)<-c(levels(dff$gender1),"TG")
levels(dff$gender1)
dff$gender1[7]<-"TG"
g_factor<-gl(3,5,labels=c("MCA","BCA","btech"))
g_factor


x<-scan()
print(x)
x<-scan(what=double())
x<-scan(what=character())
x<-scan(what=" ")
print(x)

