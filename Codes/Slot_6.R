getwd()
setwd("E:\\R_TUT")
getwd()

data()
airquality
str(airquality)

attach(airquality)

#Simple histogram
Temperature <-Temp
hist(Temperature)
#Histogram with added parameters::syntax:hist(v,main,xlab,xlim,ylim,breaks,col,border)
hist(Temperature,
      main="Maximum daily temperature at La Guardia Airport",
      xlab="Temperature in degrees Fahrenheit",
      xlim=c(50,100),
      col="darkmagenta",
      freq=FALSE # freq=FALSE we can get the probability distribution instead of the frequency.
)

output <- hist(Temperature)
output

#USE HISTOGRAM RETURN VALUES FOR LABELS USING TEXT()
h <- hist(Temperature,ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts,
      adj=c(0.5, -0.5))

#Defining the Number of Breaks
hist(Temperature, breaks=4, main="With breaks=4")
hist(Temperature, breaks=20, main="With breaks=20")

#Histogram with manual breaks
hist(Temperature,
      main="Maximum daily temperature at La Guardia Airport",
      xlab="Temperature in degrees Fahrenheit",
      xlim=c(50,100),
      col="chocolate",
      border="brown",
      breaks=c(55,60,70,75,80,100))
)


#LP Internet users
user = c(50,40,41,17,11,7,22,44,28,21,19,23,37,51,54,42,88,41,78,56,72,56,17,7,69,30,80,56,29,33,46,31,39,20,18,29,34,59,73,77,36,39,30,62,54,67,39,31,53,44)
n=1+3.322*(log10(50))
n=7

max(user)
min(user)
width=(max(user)-min(user))/n
widt=12

classwidth=seq(7,91,by=12)
classwidth

durationcut=cut(user,classwidth,right=FALSE) #right=FALSE exclusive type
durationcut
durationfreq=table(durationcut)
durationfreq
#vertcally
cbind(durationfreq)

h=hist(user,breaks=classwidth,col="blue",xlab="Timespent on internet in minutes",main="Histogram of Internet users",right=FALSE)
#Midpoints
text(h$mids,h$counts,labels=h$counts,adj=c(0.5, -0.5))

par(mfrow=c(1,2))
h=hist(user,breaks=classwidth,col="blue",xlab="Timespent on internet in minutes",main="Histogram of Internet users",right=FALSE)
text(h$mids,h$counts,labels=h$counts,adj=c(0.5, -0.5))

x.pts=c(1,h$mids,97)
y.pts=c(0,h$counts,0)
lines(x.pts,y.pts)

#Frequency polygon
plot(h$mids,h$counts,type="o",main="frequency polygon")

###############################################################
#mine
hist(user,
     main="Timespent on internet by internet users",
     xlab="Timespent on internet in minutes",
     ylab="Number of internet users",
     xlim=c(7,100),
     col="blue",
     freq=FALSE # freq=FALSE we can get the probability distribution instead of the frequency.
)

out<-hist(user)
out

h <- hist(user,ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts,
     adj=c(0.5, -0.5))

########################################################################################
#TO  drav ogives

#Less than ogive
cumfreq0=c(0,cumsum(durationfreq))
cumfreq0

plot(classwidth,cumfreq0,main="Less than ogive")
lines(classwidth,cumfreq0)

#More than ogive
cumfreq1=sum(durationfreq)-cumfreq0


plot(classwidth,cumfreq1,main="More than ogive")
lines(classwidth,cumfreq1)


#BOX PLOT
b=boxplot(user)
b

#Example:BOXPLOT
F <- c(26, 25, 33, 35, 35, 28, 30, 29, 61, 32, 33, 45)
M <- c(46, 40, 36, 47, 29, 43, 37, 38, 45, 50, 48, 60)
genders <- c("Female", "Males")
boxplot(F, M, names=genders,horizontal = TRUE,col=c("blue","pink"))

#ADD option
hist(airquality$Temp,col="pink")
boxplot(airquality$Temp,horizontal=TRUE,at=15.5,add=TRUE,axes=FALSE,col="blue")

#minor 1 
setwd("E:\\R_TUT")
m1a=read.csv("E:\\R_TUT\\minor1A.csv")
m1a
setwd("E:\\R_TUT")
m1b=read.csv("E:\\R_TUT\\minor1B.csv")
m1b

boxplot(m1a$M.1,horizontal=TRUE)
boxplot(m1b$M.1,horizontal=TRUE)

boxplot(m1a$M.1,m1b$M.1)

#outliers
outlier1=subset(m1b,M.1==1)
outlier1
outlier2=subset(m1a,M.1==1)
outlier2


user=m1a
n=1+3.322*(log10(50))
n=7

max(user$M.1)
min(user$M.1)
width=(max(user$M.1)-min(user$M.1))/n
widt=2

classwidth=seq(2,16,by=2)
classwidth

durationcut=cut(user$M.1,classwidth,right=FALSE) #right=FALSE exclusive type
durationcut
durationfreq=table(durationcut)
durationfreq

cbind(durationfreq)

h=hist(user$M.1,breaks=classwidth,col="blue",xlab="Minor 1 marks",main="Histogram of students",right=FALSE)
#Midpoints
text(h$mids,h$counts,labels=h$counts,adj=c(0.5, -0.5))

