df=read.csv("E:\\Rpgms\\Salary_Data.csv")
df
plot(df$YearsExperience,df$Salary)
lmodel<-lm(Salary~YearsExperience,data=df)
summary(lmodel)

df=read.csv("E:\\Rpgms\\CTCdata.csv")
df
cor(df)
summary(df)
missing_count <- colSums(is.na(df))
print(missing_count)
plot(df$LastCTC,df$CTCoffered)
plot(df$Highest.qualification,df$CTCoffered)
# Create a linear regression model
model<-lm(CTCoffered~Highest.qualification+LastCTC+Interview.rating+Total.years.of.work.exp,data=df)
summary(model)


df=read.csv("E:\\Rpgms\\HR_Emp_churn.csv")
summary(df)
cor(df)
df$Departments<-as.factor(df$Departments)
df$salary<-as.factor(df$salary)
missing_count <- colSums(is.na(df))
print(missing_count)
df
