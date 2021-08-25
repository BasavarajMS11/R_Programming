data=read.table("E:\\R_TUT\\abc.txt")
data

getwd()
setwd("E:\\R_TUT")
dataa=read.csv("E:\\R_TUT\\abcd.csv")
dataa
dataa1=read.csv("E:\\R_TUT\\Mydata1.csv")
dataa1
print(is.data.frame(dataa1))
print(ncol(dataa1))
print(nrow(dataa1))


head(dataa1)
tail(dataa1)
dim(dataa1)


sal<-max(dataa1$salary)
sal


retval<-subset(dataa1,as.Date(date)>as.Date("01-01-2014"))
print(retval)

#Write into csv EXTRA COLUMN GETS CREATED

write.csv(retval,"output.csv")
newdata<-read.csv("output.csv")
print(newdata)

#WRITE FILTERED DATA REMOVING EXTRA COLUMN
write.csv(retval,"output.csv",row.names=FALSE)
newdata<-read.csv("output.csv")
print(newdata)

#EXTRACT SPECIFIED COLUMNS
modified=dataa1[c(1,3)];
modified

#Write extracted data to file
write.csv(modified,file="output.csv",row.names=FALSE)
newdata<-read.csv("output.csv")
print(newdata)

