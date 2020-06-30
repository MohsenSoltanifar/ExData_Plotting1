mydata<-read.csv("mydata.csv")
head(mydata)


hist(mydata$Global_active_power, col ="red",  main ="Global Active Power" , xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "Plot1.png",width = 480, height = 480, units = "px")  
dev.off()  
############################################################################


