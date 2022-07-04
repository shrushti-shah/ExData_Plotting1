EG <- read.table("ATP/household_power_consumption_edited.txt", header=TRUE, sep="\t", 
                 na.strings="NA", dec=".", strip.white=TRUE) ##loading data 
#only reading 2-day data in February 2007

EG$Date<-as.Date(EG$Date,format='%d/%m/%Y') ##convert date to class
EG$DateTime=as.POSIXct(paste(EG$Date,EG$Time)) ##time to class
DateTime <- EG$DateTime ##new column for Date_Time as class var


##plot4

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2)) ##layout
plot(x=DateTime,y=EG$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(x=DateTime,y=EG$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(x=DateTime,y=EG$Sub_metering_1,xlab="",type="l",ylab="Energy sub metering")
lines(x=DateTime,y=EG$Sub_metering_2,col="red")
lines(x=DateTime,y=EG$Sub_metering_3,col="blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(x=DateTime,y=EG$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()