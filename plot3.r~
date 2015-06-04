# load file
household <-read.table("household_power_consumption.txt", header=T,sep= ";"
                      ,na.strings = "?", dec=".", stringsAsFactors = F)

select<-household[household$Date=="1/2/2007" | household$Date=="2/2/2007",]

select$Time<-strptime(paste(select$Date,select$Time), format="%d/%m/%Y %H:%M:%S")


png("plot2.png",width=480,height = 480)
plot(select$Time,select$Global_active_power,type="l", xlab = "", ylab = "Global Active Power (killowatts)" )

dev.off()
