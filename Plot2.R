mydata<-read.csv("mydata.csv")
head(mydata)

l=length(mydata$Global_active_power)

par(mfrow=c(1, 1))
plot(mydata$Global_active_power, xlab = "Date/Time", ylab = "Global Active Power(Kilowatts)", axes=FALSE, frame.plot=TRUE,pch=20, cex=0.2)
lines(mydata$Global_active_power )

mtext("Thu", side = 1, at=c(1) , outer = F   )
mtext("Fri", side = 1, at=c(l/2), outer = F   )
mtext("Sat", side = 1, at=c(l), outer = F   )

dev.copy(png, file = "Plot2.png",width = 480, height = 480, units = "px")  
dev.off() 

############################################################################
