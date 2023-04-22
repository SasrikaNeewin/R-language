getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 8")
getwd()


nicotine<-read.table("Data.txt",header =TRUE)
fix(nicotine)

#change data structure into a horizontal way
nicotine<-nicotine[[1]]
nicotine

#Q1
mean(nicotine)
var(nicotine)
sd(nicotine)

#Q2
s<-sample(nicotine,5)
s
samples<-c()
n<-c()
for(i in 1:30){
  s<-sample(nicotine,5)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)<-n
samples

s.means<-colMeans(samples)
s.means

s.vars<-apply(samples,2,var)
s.vars

#Q3
mean(s.means)
var(s.means)

#Q4
mean(nicotine)
mean(s.means)
#2 values are approximately equal

#Q5
var(nicotine)
var(s.means)
#2 values are not equal.Sample size is too small.

































































