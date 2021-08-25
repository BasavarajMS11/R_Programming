#RBIND and CBIND FUNCTIONS
first_row<-c(1,2,3)
second_row<-c(10,20,30)
third_row<-c(100,200,300)
fourth_row<-c(1000,1000,1000)
tmp<-rbind(first_row,second_row,third_row,fourth_row)
tmp
 
row_scores<-rowSums(tmp)
scores<-cbind(tmp,row_scores)
 
rownames(scores)<-c("row1","row2","row3","row4")

colnames(scores)<-c("c1","c2","c3","total")
scores

#EXAMPLE
#RBIND
rd1=data.frame(cI=c(1:6),product=c(rep("toster",3),rep("radio",3)))
rd2=data.frame(cI=c(1:4),product=c(rep("TV",3),rep("Mobile",1)))
rd3=rbind(rd1,rd2)
rd3

getwd()
setwd("E:\\R_TUT")
getwd()

############################################################
#Lungdata It should be (data.frame or CSV)

class(lungdata)  #FORMAT
dim(lungdata)
head(lungdata)
tail(lungdata)

#Subsets
lungdata[c(7,9,11,13,15),]
lungdata[c(7:13),]
names(lungdata)

mean(lungdata$Age)

#alternate method->attach the table
attach(lungdata)
mean(Age)

#particularly male and female
mean(Age[Gender=="female"])
mean(Age[Gender=="male"])

#making subsets using data variables
femaledata=subset(lungdata,Gender=="female")
femaledata
maledata=subset(lungdata,Gender=="male")
maledata

summary(maledata)
summary(femaledata)

#Find the male whose age is >15
maleover15=subset(lungdata,Gender=="male"&Age>15)
maleover15

over15male=lungdata[Gender=="male" & Age>15,]

head(over15male)
over15male[1:5,]

#Female smokers
femaleSmokers=subset(femaledata,Smoke=="yes")
femaleSmokers
dim(femaleSmokers)

#Lung capacity of femalesmokers
LCF=femaleSmokers$LungCap
LCF
boxplot(LCF)

maleSmokers=lungdata[Gender=="male" & Smoke=="yes",]
maleSmokers
LCM=maleSmokers$LungCap

boxplot(LCM,LCF)

data()
AirPassengers
class(AirPassengers)  #ts->time series

class(airquality)
head(airquality)

getwd()
setwd("E:\\R_TUT")
getwd()



