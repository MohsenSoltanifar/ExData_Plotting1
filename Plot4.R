mydata<-read.csv("mydata.csv")
head(mydata)


l=length(mydata$Global_active_power)

par(mfrow=c(2, 2))
#p1
plot(mydata$Global_active_power, xlab = "Date/Time", ylab = "Global Active Power(Kilowatts)", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2)
lines(mydata$Global_active_power )

mtext("Thu", side = 1, at=c(1) , outer = F   )
mtext("Fri", side = 1, at=c(l/2), outer = F   )
mtext("Sat", side = 1, at=c(l), outer = F   )

#p2

plot(mydata$Voltage, xlab = "Date/Time", ylab = " Voltage", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2)
lines(mydata$Voltage )

mtext("Thu", side = 1, at=c(1) , outer = F   )
mtext("Fri", side = 1, at=c(l/2), outer = F   )
mtext("Sat", side = 1, at=c(l), outer = F   )

#p3

plot(mydata$Sub_metering_1, col = "black", xlab = "Date/Time", ylab = "Energy Submetering", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2, ylim = c(0,50))
lines(mydata$Sub_metering_1,  col = "black")
par(new=TRUE)
plot(mydata$Sub_metering_2, col = "red", xlab = " ", ylab = " ", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2, ylim = c(0,50))
lines(mydata$Sub_metering_2,  col = "red")
par(new=TRUE)
plot(mydata$Sub_metering_3, col = "blue", xlab = " ", ylab = " ", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2, ylim = c(0,50))
lines(mydata$Sub_metering_3,  col = "blue")
legend( "topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=c(1,1,1),cex=0.75)


mtext("Thu", side = 1, at=c(1) , outer = F   )
mtext("Fri", side = 1, at=c(l/2), outer = F   )
mtext("Sat", side = 1, at=c(l), outer = F   )


#p4

plot(mydata$Global_reactive_power, xlab = "Date/Time", ylab = "Global ReActive Power(Kilowatts)", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2)
lines(mydata$Global_reactive_power )

mtext("Thu", side = 1, at=c(1) , outer = F   )
mtext("Fri", side = 1, at=c(l/2), outer = F   )
mtext("Sat", side = 1, at=c(l), outer = F   )

dev.copy(png, file = "Plot4.png",width = 480, height = 480, units = "px")  
dev.off() 


############################################################################




