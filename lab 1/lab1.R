print(100:150)
#This my first R lab
#get current working directory
getwd()
#set working directory
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 1")
getwd()

#help
?solve
help("data.frame")

install.packages("")

#scalar operators
3+5
10-5
5*5
12/3
4^2
4**2
60%%2
60%/%2

#logical operators
x=5
y=-4

isTRUE(x==y)
isTRUE(x>y)
isTRUE(x<=y)
isTRUE(x>=y)
isTRUE(x==6)
isTRUE(x<6 & y>0)
isTRUE(x<6 | y>0)
isTRUE(x!=y)

#assignment operators
#local environment
a=5
a<-5


#global environment
a<<-5


#vector
w<-c(1,2,3,4,5)
w
class(w)

r<-c("a","b","c","d")
r
class(r)


#factor
gender<-c(0,1,0,1,0,1,0,1)
gender

Divisor<-factor(gender,c(0,1),c("Male","Female"))
Divisor
class(Divisor)

#list
p<-c(1,2,3)
d<-"green"
g<-"21"
p
d
g

H<-list(p,d,g)
H
class(H)

#matrix
mat<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=TRUE)
mat
class(mat)

mat1<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=FALSE)
mat1
class(mat1)

#dataframe
height<-c(14,23,45,6,7,89)
weight<-c(45,67,34,07,45,80)

Here<-data.frame(height,weight)
Here



















