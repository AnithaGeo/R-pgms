x<-c(20,55,10,15)
y<-c("A","B","C","D")
pie(x,y,main="PieChart")
pie(x,y,col=rainbow(length(x)),main="PieChart")
legend("bottomright",y,fill = rainbow(length(x)))
mydata<-read.csv("E:/Rpgms/car.csv")
hist(mydata$city_mpg,col = "orchid2", xlab="city mileage",xlim = c(0,50),ylim=c(0,50),breaks = 20)
plot(mydata$city_mpg,mydata$highway_mpg,col="orchid2", xlab = "city mileage",ylab="highway mileage")
lines(mydata$city_mpg, col = "red",
      lwd = 1, lty = l)
boxplot(mydata$highway_mpg,ylab="highway mileage")
