# load file
household <-read.table("household_power_consumption.txt", header=T,sep= ";"
                      ,na.strings = "?", dec=".", stringsAsFactors = F)

select<-household[household$Date=="1/2/2007" | household$Date=="2/2/2007",]

select$Time<-strptime(paste(select$Date,select$Time), format="%d/%m/%Y %H:%M:%S")


png("plot3.png",width=480,height = 480)
plot(select$Time,select$Sub_metering_1,type="l", xlab = "", ylab = "Energy sub metering" )
lines(select$Time,select$Sub_metering_2,col="red")
lines(select$Time,select$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty =1 ,seg.len = 2)
dev.off()
