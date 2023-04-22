getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 5")
getwd()

#Read the text file
data1<-read.table("Data.txt",header= TRUE, sep = ",")
data1
fix(data1)

#rename the table header
names(data1)<- c("x1","x2")


attach(data1)


#Q1
hist(x2, main="Histogram for no of shareholders")
#Q2
g<-hist(x2, main="Histogram for no of shareholders", breaks = seq(130,270,length=8),right = FALSE)
#n= number of classes
#length = n+1

#Q3
#1-step- Identify the break points
a<-round(g$breaks)
a
#2-step - identify fequencies of each class
freq1<-g$counts
freq1
#3-step - identify midpoints of each class
mids1<-g$mids
mids1
#create a empty vector
classes<-c()

for(i in 1:length(a)-1){
  classes[i]<-paste0("[",a[i],",",a[i+1],"]")
}
cbind(Classes=classes,frequency=freq1)

#Q4
#draw in the same plot
lines(g$mids,freq1)

#draw in a new plot
plot(mids1,freq1,type="l",main="Frequency polygon for number of shareholders",xlab="Shareholder",
     ylab="Frequency",ylim=c(0,max(freq1)))

plot(mids1,freq1,type="o",main="Frequency polygon for number of shareholders",xlab="Shareholder",
     ylab="Frequency",ylim=c(0,max(freq1)))
plot(mids1,freq1,type="p",main="Frequency polygon for number of shareholders",xlab="Shareholder",
     ylab="Frequency",ylim=c(0,max(freq1)))

#Q5
cum.freq<-cumsum(freq1)
cum.freq
#empty vector
new<-c()

for(i in 1:length(a)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
  
}

plot(a,new,type="o",main="Frequency polygon for number of shareholders",xlab="Shareholder",
     ylab="Cumulative Frequency",ylim=c(0,max(cum.freq)))
cbind(Upper=a,CUmFeq=new)














