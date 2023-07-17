library(dplyr)
mydata<-data.frame(roll=c(1:5),name=c("anu","sunu","ajay","sona","nisha"),
                   age=c(42,54,34,43,27),ht=c(146,176,154,128,139),
                   wt=c(65,47,73,59,61),gender=c("F","F","M","F","F"))
mydata

#select() :col retrieval
#filter():row retrieval 
#mutate(): update with new var
#arrange()

select(mydata,age)
select(mydata,roll:age)
select(mydata,age,wt)
mydata %>% select(age)

filter(mydata,wt>60)
filter(mydata,wt>60|wt<50)
mydata %>% select(gender,age) %>% filter(gender=="F")
select(filter(mydata,wt>60),name)
mydata %>% filter(ht>150&wt>50) %>% select(name)

mutate(mydata,hwratio=ht/wt)

mydata %>% arrange(gender)
mydata %>% filter(ht>150) %>% arrange(ht)

mydata %>% group_by(gender) %>% count(gender)
mydata %>% group_by(gender) %>% summarise(avg=mean(ht))
