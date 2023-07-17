library(tidyr)
table1
table2
table3
table4a
table4b
table5
spread(table2,type,count)
table2
gather(table1,type,statistics,cases,population)
table1
table3
separate(table3,rate,into=c("cases","population"),sep="/")
table5
unite(table5,year,century,year,sep="")
table1
separate(table1,year,into=c("century","year"),sep=2)


View(who)
#1. The data appears to contain values in its column names. 
#Move the values into their own column.
#This will make it easy to separate the values combined in each code.
who1=gather(who,"type","cases",5:60)
print(who1,n=405)

#2. Separate the values in each code with two passes. 
#The first pass will split the codes at each underscore. 
#The second pass will split sex and age after the first character 
#to create a sex column and an age column.
who2=separate(who1,type,into=c("time","type","sexage"),sep="_")
print(who2,n=1000)
who3=separate(who2,sexage,into=c("sex","age"),sep=1)
print(who3,n=990)
who4<-who3[,c(1,2,3,4,5,7,8,6,9)]
print(who4,n=990)
#3. Move the rel, ep, sn, and sp keys into their own column names
who5=spread(who4,key=type,value=cases)
print(who5,n=990)
who4[400000,]
View(who)