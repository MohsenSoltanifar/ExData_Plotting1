mydata<-read.csv("mydata.csv")
head(mydata)


l=length(mydata$Global_active_power)

par(mfrow=c(1, 1))
plot(mydata$Sub_metering_1, col = "black", xlab = "Date/Time", ylab = "Energy Submetering", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2, ylim = c(0,50))
lines(mydata$Sub_metering_1,  col = "black")
par(new=TRUE)
plot(mydata$Sub_metering_2, col = "red", xlab = " ", ylab = " ", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2, ylim = c(0,50))
lines(mydata$Sub_metering_2,  col = "red")
par(new=TRUE)
plot(mydata$Sub_metering_3, col = "blue", xlab = " ", ylab = " ", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2, ylim = c(0,50))
lines(mydata$Sub_metering_3,  col = "blue")
legend( "topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=c(1,1,1))


mtext("Thu", side = 1, at=c(1) , outer = F   )
mtext("Fri", side = 1, at=c(l/2), outer = F   )
mtext("Sat", side = 1, at=c(l), outer = F   )

dev.copy(png, file = "Plot3.png",width = 480, height = 480, units = "px")  
dev.off() 


############################################################################

