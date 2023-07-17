setwd("E:/Rpgms")
dff<-read.csv("sampledata.csv")
dff

#Using dplyr package, do the following for the attached data set.
# Select variables "Index", columns from "State" to "Y2008".
select(dff,Index:Y2008)

#Drop the variable index
df<-select(dff,-c(Index))
df

#Select or Drop Variables that starts with 'Y'
dff%>% select(starts_with("Y"))

#Filter rows and retain only those values in which Index is equal to A.
dff %>% filter(Index=="A")

#Select rows against 'A' and 'C' in column 'Index'.
dff %>% filter(Index=="A" | Index=="C")

#Select data for 'A' and 'C' in the column 'Index' and income greater than 1.3 million in Year 2002.
dff %>% filter(Index=="A" | Index=="C") %>% filter(Y2002>1300000)

# Calculate mean and median for the variable Y2015.
dff %>% summarise(avg=mean(Y2015),med=median(Y2015))

#Select multiple variables by their names for computing mean and median
colMeans(dff[sapply(dff,is.numeric)])

#Select 10 random observations of two variables "Index" "State"
dff[sample(1:nrow(dff), size = 4), ]

#Calculate count and mean of variables Y2011 and Y2012 by variable Index.

#Compute mean of variables Y2014 and Y2015 by variable Index. Then sort the result by calculated mean variable Y2015.

#Calculates division of Y2015 by Y2014 and name it "change".

#Calculate rank for variables Y2008 to Y2010.

#Select State that generated highest income among the variable 'Index'