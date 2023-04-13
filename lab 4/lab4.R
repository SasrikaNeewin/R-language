getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 4")
getwd()

data<-read.table("DATA 4.txt", header=TRUE ,sep="")
data
fix(data)

names(data)<-c("Team" , "Attendence","Salary","Years")
data
fix(data)

#accessing variables or coloumns directly without calling the whole dataset
attach(data)

#box-plot
boxplot(Attendence,main="Boxplot for Attendence",outline=TRUE ,xlab="Attendence",horizontal= TRUE)
boxplot(Salary,main="Boxplot for Team Salary",outline=TRUE ,xlab="Salary",horizontal= TRUE)
boxplot(Years,main="Boxplot for Years",outline=TRUE ,xlab="Years",horizontal= TRUE)

#histogram
hist(Attendence,main="Histogram for attendence",ylab="Frequency")
abline(h=0)
hist(Salary,main="Histogram for salary",ylab="Frequency")
abline(h=0)
hist(Years,main="Histogram for years",ylab="Frequency")
abline(h=0)

#stem and leaf
stem(Attendence)
stem(Salary)
stem(Years)

#mean
mean(Attendence)
mean(Salary)
mean(Years)

#median
median(Attendence)
median(Salary)
median(Years)

#Standard Deviation
sd(Attendence)
sd(Salary)
sd(Years)

#summary of all quartile values
summary(Attendence)
#quartile values
quantile(Attendence)

#first and third quantile
quantile(Attendence)[2]
quantile(Attendence)[4]

#inter-quantile range
IQR(Attendence)
IQR(Salary)
IQR(Years)

#function that accept argument years and give the mode
get.modes<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

get.modes(Years)

#Q4
get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound " ,ub))
  print(paste("Lower Bound " ,lb))
  print(paste("outliers",paste(sort(z[z<lb|z>ub]),collapse=",")))}

get.outliers(Years)
get.outliers(Attendence)
get.outliers(Salary)







