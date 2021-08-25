#BASICS
x<-5
"Hello woeld"
a<-c(2,3,4)
b<-c(10,10,10)
a+b
a=10
a+a
a<-3
a+a

#STRING
string<-"Hello World "
print(string)
string
cat(string)

#ARITHMETIC
x=20
y=20
sum=x+y
diff=x-y
prod=x*y
div=x/y
sum
diff
prod
div
getwd()
setwd("E:\\R_TUT")
getwd()

var_x<-"Hello"
cat("The class of var_x is",class(var_x),"\n")

var_y<-9.8
cat("now the class of var_y is",class(var_y),"\n")

#Finding values
print(ls())


#Vectors:  USE function c()

#Create vector
color<-c('red','blue','green')
print(color)

#GET CLASS
print(class(color))

marks<-c('10','20',30)
print(marks)
print(class(marks))

#VARIABLES USAGE
#ASSIGNMENT using equal operator
var.1=c(1,2,3,4)

#using leftward operator
var.2<-c("learn","R")

#using rightward
c(TRUE,1)->var.3
print(var.1)

cat("var 1 is",var.1,"\n")
cat("var 2 is",var.2,"\n")
cat("var 3 is",var.3,"\n")

#Example on vectors
a=c(1,2,3,4)
b=a+5
print(b)

sqrt(a)

a<-c(1,2,3)
b<-c(10,11,12,13)
a+b

a=c(2,4,6,3,1,5)
b=sort(a)
print(b)
c=sort(a,decreasing=FALSE)
print(c)

#LISTS:is R-object which contain different types of elements like vectors,functions

#create list
listl<-list(c(2,3,4),20.200,"sine")
print(listl)

#REMOVE VARIABLE
rm(b)

#REMOVE ALL
rm(list=ls(all=TRUE))

#MATRICES
#CREATE :Row-wise
M=matrix(c(1,2,3,4,5),nrow=3,ncol=3,byrow=TRUE)
print(M)

#CREATE :Row-wise
N=matrix(c(1,2,3,4,5),nrow=3,ncol=3)
print(N)

#ARRAYSm: "dim"
a<-array(c('green','yellow'),dim=c(3,3,2))
print(a)
