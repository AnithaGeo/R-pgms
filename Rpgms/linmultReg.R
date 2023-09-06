happy<-read.csv("E:/Rpgms/income.data.csv")
View(happy)
plot(happy$income,happy$happiness)
lmodel<-lm(happiness~income,data=happy)
summary(lmodel)
#residuals show the quartile values for the difference between actual
#and prediced values. Coefficient shows that there is a minimum 
#happines of 0.2 when income is 0, and for each unit rise in income,
#happiness increases by 0.7. Rsq high means data is well explained by line 
View(mtcars)
mt<-read.csv(mtcars)
lmodel<-lm(happiness~income,data=happy)
