print(getwd())
setwd("E:/Rpgms")
print(getwd())
dff<-read.csv("data1.csv")

#--------------------------------
#i. Illustration of sample, runif and rnorm functions with examples
#Sample() function is used to generate the random elements 
#from the given data with or without replacement.
a<-c(43,6,9,23,76,48,6,23,6,0,45,76)
print(sample(a,5))

dff[sample(1:nrow(dff), size = 4), ]

#You can use the runif() function to generate random values 
#from a uniform distribution in R.
runif(5,min = 6,max = 12)

round(runif(5,min = 6,max = 12),2)

values<-runif(5,min = 6,max = 12)
hist(values)

#rnorm is the R function that simulates
#random variates having a specified normal distribution.
rnorm(7,mean=3,sd=6)

rnorm(1:35,mean=20,sd=2)

#------------------------------
#ii. Write a R program to create a list of random numbers in
#normal distribution and count occurrences of each value.
r<-floor(rnorm(25,mean=30,sd=5))
r
print(table(r))

#-------------------------------
#iii.	Write a R program to create a vector which contains 
#10 random integer values between -50 and +50
vctr<-sample(-50:+50,10)
print(vctr)

#-----------------------------
#iv.	Use the sample function to obtain a random sample of 
#10 realisations in a biased coin experiment
sample(c('H','T'),10,replace = 'TRUE')

#-----------------------------
#v.	Create a fair dice (with possible outcomes from 1 to 6) 
#and determine the arithmetic mean and standard deviation of 
#throwing it 10,000 times.
dice=c(sample(1:6,10000,replace='TRUE'))
print((mean(dice)))
print(sd(dice))


#------------------------------
#vi.	The most popular German lottery is known as 6 aus 49, 
#in which a total of 7 numbers are randomly drawn: First, 
#6 unique numbers are randomly drawn out of the numbers from 
#1 to 49. Second, a single-digit “Superzahl” between 0 and 9. 
#Simulate this lottery and run it once.
lottery=c(sample(1:49,6))
print(lottery)
superzahl=c(sample(0:9,1))
print(superzahl)



#-----------------------------
#vii.	Suppose we select a SRS of n = 3 balls from an urn 
#containing a population of N = 6 balls (painted with the 
#numbers 1, 2, 3, 4, 5, and 6). List the sample space S of 
#all possible outcomes.
s<-c(1:6)
samplespace<-unique(apply(combn(s,3),2,paste0,collapse = ""))
print(samplespace)

combn(6,3)

#i----------------------
pnorm(27.4, mean=50, sd=20)
pnorm(100, mean=50, sd=20)
dbinom(27, size=100, prob=0.25)
pbinom(27, size=100, prob=0.25)
ppois(3,lambda = 2)
dpois(3,lambda = 2)
#------------------------------
#ii.	Calculate the following probabilities:
#Prob that a normal random variable with mean 22 and var 25
#(i)lies between 16.2 and 27.5
pnorm(27.5,mean=22,sd=sqrt(25))-pnorm(16.2,mean=22,sd=sqrt(25))
#(ii)is greater than 29 
1-pnorm(29,mean=22,sd=sqrt(25))
#(iii)is less than 17
pnorm(17,mean=22,sd=sqrt(25))
#(iv)is less than 15 or greater than 25 
pnorm(15,mean=22,sd=sqrt(25))+1-pnorm(25,mean=22,sd=sqrt(25))

#Probability that in 60 tosses of a fair coin the head comes up
#(i) 20,25 or 30 times

dbinom(20,60,0.5)+dbinom(25,60,0.5)+dbinom(30,60,0.5)
#(ii)  less than 20 times
pbinom(20,60,0.5)
#(iii)between 20 and 30 times 
pbinom(30,60,0.5)-pbinom(20,60,0.5)

#A random variable X has Poisson distribution with mean 7. 
#Find the probability that
#(i)X is less than 5 
ppois(5,7)
#(ii)X is greater than 10 (strictly)
1-ppois(10,7)
#(iii)X is between 4 and 16
ppois(16,7)-ppois(4,7)

#iii.	Simulate normal distribution values. Imagine a 
#population in which the average height is 1.70 m with a 
#standard deviation of 0.1. Use rnorm to simulate the height 
#of 1000 people and save it in an object called heights.
#a) Plot the density of the simulated values.
set.seed(1)
heights<-rnorm(1000,1.7,0.1)
plot(density(heights),main="Density plot",xlab="Height(m)")

#b) Generate 10000 values with the same parameters and plot 
#the respective density function on top of the previous plot 
#in red to differentiate it.
heights1<-rnorm(10000,1.7,0.1)
lines(density(heights1),col='red')

#iv.	You roll a die 100 times and get just 10 sixes.
#  •	What is the probability of getting just 10 sixes? 
dbinom(10,100,1/6)
#  •	What is the probability of getting 10 or fewer sixes?
pbinom(10,100,1/6)
#  •	Draw the probability distribution. 
prob <- dbinom(0:100, size = 100, prob = 1/6)
barplot(prob,names.arg = 0:100,xlab = "Number of Sixes",ylab = "Probability",main = "Probability distribution")

#  •	Simulate the described experiment 1000 times and compute 
#the empirical distribution.Compare it to the theoretical one. 
#Then do the same with 1,000,000 simulations.
#v.	Using the function rbinom to generate 10 unfair coin 
#tosses with probability  success of 0.3. Set the seed to 1
set.seed(1)
rbinom(10,1,0.3)

#vi.	Simulate normal distribution values. Imagine a population 
#in which the average height is 1.70 m with an standard 
#deviation of 0.1, using rnorm simulate the height of 100 
#people and save it in an object called heights.
#a) What’s the probability that a person will be smaller or 
#equal to 1.90 m ?
set.seed(1)
heights <- rnorm(100, mean = 1.70, sd = 0.1)
pnorm(1.90, mean = 1.70, sd = 0.1)
# b) What’s the probability that a person will be taller or 
#equal to 1.60 m? 
1-pnorm(1.60, mean = 1.70, sd = 0.1)


#data maniputn with dplyr cheetsheet