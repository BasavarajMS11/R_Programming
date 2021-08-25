x = 50
y = 20
sum = x+y
dif = x-y
pro = x*y
div = x/y

sum
dif
pro
div

var_x<-"hello"
cat("The class of var_x is",class(var_x),"\n")

print(ls())


#Vectors initiated by using c()

color = c("red","green","yellow")
print(color)
print(class(color))

num = c(10,20,30,'40')
num
print(class(num))


var.1 = c(0,1,2,3)

var.2 = c("learn","R")

c(TRUE,1)->var.3

cat("var.1 is",var.1,"\n")
cat("var.2 is",var.2,"\n")
cat("var.3 is",var.3,"\n")

a= c(1,2,3,4,5)
b = a+5
b

sqrt(a)

a<-c(1,2,3)
b<-c(10,11,12,13)
a+b

a = c(2,4,6,3,1,5)
b = sort(a)
b
c = sort(a,decreasing = TRUE)
c


list1 = list(c(1,2,4),'a',7019299396)
list1
drop(a)
a

#create a matrix
M = matrix(c(10,20,30,40,50,60,70,80,90),nrow = 7,ncol=7)
M

F = matrix(c(10,20,30,40,50,60,70,80,90),nrow = 3,ncol=4,byrow=TRUE)
F

G = matrix(c(10,20,30,40,50,60,70,80,90),nrow = 3,ncol=4)
G



a = array(c('green','yellow'),dim = c(3,2,3),byrow=TRUE)
print(a)


getwd()
setwd('F:\\Studio')

data = data.frame(Name = c('Anush','Basavaraj','Darshan'), Age = c(19,18,21), Sem = c(4,3,4))
data

typeof(data)
class(data)
data[,]

a = 1
b= 1

if(a== b){
  print("bite me")
  
}


x = 1:10
typeof(x)
class(x)

ifelse(x<5 | x>8,x,FALSE)

a = c(10,25,3)
ifelse(a%%2==0,"even", "odd")

x = c("what", "is", "truth")

if("Truth" %in% x){
  
  print("Truth is found the firse time")  
  
}else if("truth" %in% x){
  print("Truth is found the second time")
  
}else
  {
  print("No truth found")
  }


x = c(1,2,3)

for(val in x){
  print(val)
}


x = LETTERS[1:10]

for(xi in x){
  print(xi)
}

c = -5
while(c<2){
  
  print("Hi") 
  c =c + 2
}

z = c("hello","Hi","bite me")
var = 0
while(var<5){
  print(z)
  var = var +1
}

num = 1:5

for(val in num){
  if(val==3){
    break;
  }
  
  print(val)
}


for(val in num){
  if(val==3)
    next
  
  print(val)
}

 x = scan()
  
mode(x)
typeof(x)
class(x)
mode(data)


print(seq(30,35,1))
print(mean(1:5))

print(sum(1,5))



new = function(a){
  for(i in 1:a){
    b = i^2
    print(b)
  }
}

new(5)


new = function(a,b,c){
    b = a*b*c
    print(b)
  }

input(a,b,c)
new(4,3,2)

print("hi")

a= 4
b =5
sum = a+b
cat("The sum of",a=scan(),"and",b,"is",a+b)
5

5

getwd()
setwd("E:\\R_TUT")
getwd()
source("E:\\R_TUT\\abc.txt")

