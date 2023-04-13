getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 3")
getwd()

#import file
data<-read.csv("DATA 3.csv",header=TRUE)
data
fix("data")

#rename the coloumns
names(data)<-c("Age","Gender","Accomadation")  
fix(data)

#rename categorical data
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
fix(data)

data$Accomadation<-factor(data$Accomadation,c(1,2,3),c("Stays at Home","Boarded Students"," Lodging "))
fix(data)

#attach the modification to imported data set
attach(data)


#2
#frequency table
gender.freq<-table(Gender)
acc.freq<-table(Accomadation)
gender.freq
acc.freq

#pie chart
pie(gender.freq,"Pie chart for gender")
pie(acc.freq,"Pie chart for accomadation")

#barplot
barplot(gender.freq,main="Bar plot Gender",ylab="Frequency")
abline(h=0)

barplot(acc.freq,main="Bar plot Accomadation",ylab="Frequency")
abline(h=0)

#boxplot
boxplot(Age,main="Boxplot for age",ylab="Age",outpch=8)


#Q3
#Two-way frequency table
gender_acc.freq<-table(Gender,Accomadation)
gender_acc.freq

#stackbarchart
barplot(gender_acc.freq,main="Gender and Accomadation",legend=rownames(gender_acc.freq))
abline(h=0)

#clustered bar charts
barplot(gender_acc.freq,beside= TRUE ,main="Gender and Accomadation",legend=rownames(gender_acc.freq))
abline(h=0)


#Q4
#side by side boxplot
boxplot(Age~Gender,main = "Boxplot for age by Gender",xlab="Gender",ylab="Age")
boxplot(Age~Accomadation,main = "Boxplot for age by Accomadation",xlab="Accomadation",ylab="Age")

#Q5
xtabs(Age~Gender+Accomadation)/gender_acc.freq


