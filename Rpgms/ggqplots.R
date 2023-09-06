#Using ggplot2 package
#Illustrate the following with ggplot2 using diamonds data set
library(ggplot2)
View(diamonds)
#1.Create a histogram of carat with a border color and fill color
ggplot(diamonds,aes(x=carat))+geom_histogram(col='red',fill='thistle')
#2.Set the bin width of the histogram to 0.01
ggplot(diamonds,aes(x=carat))+geom_histogram(binwidth=0.01,col='red',fill='thistle')
#3.Make a scatterplot: carat vs price, set the color to clarity
ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point()
#4.Make a scatterplot: carat vs price, set the color to clarity.
#Also add trendline to the plot
ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point()+geom_smooth(method=lm)
#5.Make a scatterplot: carat vs price,
#Facet it by clarity
#Add a theme layer for the plot(graph title, background color etc)
ggplot(diamonds,aes(x=carat,y=price))+geom_point()+facet_grid(~clarity)+ggtitle("carat vs price")+
  theme(plot.background=element_rect(fill = 'thistle'))
#6.Show carat vs cut, make a violin and a boxplot.
ggplot(diamonds,aes(x=carat,y=price))+geom_boxplot()
ggplot(diamonds,aes(x=carat,y=price))+geom_violin()

#Illustration of qplot function for histogram, scatter plot,boxplot,
#dotplot and violin plot using mpg data set.
View(mtcars)
#Convert the attributes gear, am, cyl of mtcars data set to categorical.
mtcars$cyl<-as.factor(mtcars$cyl)
mtcars$gear<-as.factor(mtcars$gear)
mtcars$am<-as.factor(mtcars$am)
#1.Create density plots for mpg grouped by number of gears (indicated by color)
qplot(mpg,data=mtcars,geom="density",color=gear)
#2.Scatterplot of mpg vs. hp for each combination of gears and cylinders in
#each facet, am is represented by shape and color
qplot(mpg,hp,data=mtcars,shape=am,color=am)
ggplot(mtcars,aes(x=mpg,y=hp,col=am))+geom_point()+facet_grid(~gear)
#3.Separate regressions of mpg on weight for each number of cylinders

#4.Boxplots of mpg by number of gears. Observations (points) are overlayed
#and jittered. Give a title to the plot.