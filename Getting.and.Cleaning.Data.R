setwd("C:/Users/Mohsen/Desktop/Data.Science.Certificate.Coursera2020/Course 4. Exploratory Data Analysis/Week1/Assignment1")


#Read Original Data

mydata0<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")

str(mydata0)
#Subset it to 2007-02-01 and 2007-02-02 (01/02/2007  to  02/02/2007)

Date0=mydata0$Date
Date0[1:6]
class(Date0)
Date1= as.Date(Date0, format="%d/%m/%Y")
Date1[1:6]
class(Date1)

Datef1<-as.Date("2007-02-01")  
Datef2<-as.Date("2007-02-02")

mydata1 <- mydata0[Date1 >= Datef1 &  Date1<= Datef2,]

#write it to new data for further analysis

write.csv(mydata1, "mydata.csv")

 

