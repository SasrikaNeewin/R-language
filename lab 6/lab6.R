getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 6")
getwd()

#Q1
data1<-read.table("Forest.txt",header=TRUE,sep=",")
data1
fix(data1)
attach(data1)

#q2
#Give the summary of the structure of data set
str(data1)


#Q3
#517 observations

#Q4
max(wind)
min(wind)

#Q5
#five number summary
summary(temp)

#Q6
boxplot(wind, horizontal = TRUE,outline =TRUE,pch= 16)
#3 outliers
#negative skewed distribution

#Q7
#negative distribution

#Q8
median(temp)

#Q9
mean(wind)
#standard variation
sd(wind)

#Q10
IQR(wind)


#Q11
#2 way frequency for day and month
freq<-table(day,month)
freq

#Q12
#avg is mean
mean(temp[month=="sep"])

#Q13
count<-table(day[month=="jul"])
names(count[count==max(count)])






























