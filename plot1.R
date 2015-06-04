# load file
household <-read.table("household_power_consumption.txt", header=T,sep= ";"
                      ,na.strings = "?", dec=".", stringsAsFactors = F)

# select dates
select<-household[household$Date=="1/2/2007" | household$Date=="2/2/2007",]


#plot
png("plot1.png",width=480,height = 480)
hist(select$Global_active_power, col="red",
     xlab = "Global Active Power (killowatts)", main= "Global Active Power")

dev.off()
