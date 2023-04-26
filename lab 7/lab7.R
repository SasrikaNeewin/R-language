getwd()
setwd("C:\\Users\\sasri\\OneDrive\\Desktop\\YEAR 2 SEM 2\\P & S\\lab\\lab 7")
getwd()


              #QUESTION 1
#1 Binomial Distribution
X ~ Bin(44, 0.92)

#2
dbinom(40,44,0.92)
?dbinom

#3
pbinom(35,44,0.92)

#4
1-pbinom(37,44,0.92)

#5
pbinom(42,44,0.92)-pbinom(39,44,0.92)


              #QUESTION 2
#1
dpois(6,4.5)
?dpois

#2
ppois(6,4.5,lower.tail = FALSE)

              #QUESTION 3
#1
pexp(3,rate=1/2)
?pexp


#2
pexp(4,rate=1/2,lower.tail=FALSE)

#3
pexp(4,rate=1/2)-pexp(2,rate=1/2)


              #QUESTION 4
#1
1-pnorm(37.9,36.8,0.4)
?pnorm

#2
pnorm(36.9,36.8,0.4)-pnorm(36.4,36.8,0.4)

#3
qnorm(0.012,36.8,0.4)
?qnorm

#4
qnorm(0.99,36.8,0.4)

























