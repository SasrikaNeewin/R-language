setwd("C:\Users\sasri\OneDrive\Desktop\YEAR 2 SEM 2\P & S\lab\lab 2")
getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 2")


#control structures
#if condition

x<-4
x

if(x>0){
  print("Positive Number")
}


#if else
x<-7
y<--2
x
y

if(x>0){
  print("Positive Number")
}else{
  print("Negative number")
}



#nested if else
x<-0
x
if(x>0){
  print("Postive number")
}else if(x<0){
  print("Negative number")
}else if (x==0){
  print("equal to 0")
}


#while loop 
i<-1
while(1<6){
  print(i)
  i=i+1
  
}
#for loop
6:10

#read csv files
data2<-read.csv("DATA 2.csv")
data2
fix("DATA 2")

#read text file
data1<-read.table("DATA 1.txt", header = TRUE, sep = ",")
data1

#write data to a file
index<-c(1,2,3)
name<-c("Niamal","Kamal","Sunil")
marks<-c(23,56,34)

dataFrame <-data.frame(index,name,marks)
dataFrame

write.csv(dataFrame,"dataframe1.csv")

#write data to a text file
write.table(dataFrame,"dataFrame2.txt")


#create function
function_01<-function(a,b){
  y<-a+b
  print(y)
}

#call the function
function_01(4,6)

#Q01
quadRoots<-function(a,b,c){
  x1=(-b + sqrt(b^2-4*a*c))/2*a
  
  x2=(-b - sqrt(b^2-4*a*c))/2*a
  
  print(x1)
  print(x2)
}

#calling the function
quadRoots(2,3,1)


#Q4
#1:k
#k=20

vec1<-c(1:20)#3,6,9,12,15,18
sum(vec1%%3==0)

#Q06
data3<-c(24,67,45,23)
max<-0
maxIndex<-0

for(i in 1:length(data3)){
  if(max<data3[i]){
    max<-data[i]
    maxIndex<-i
  }
  
}

maxIndex 

#Q08
moneyOwned<-function(){
  for(i in 1:n){
    A=(P*(1+(R/100))^i)
    print(A)
  }
}
moneyOwned(5000,11,5,15)




