EG <- read.table("ATP/household_power_consumption_edited.txt", header=TRUE, sep="\t", 
                 na.strings="NA", dec=".", strip.white=TRUE) ##loading data 
#only reading 2-day data in February 2007


##plot2
EG$Date<-as.Date(EG$Date,format='%d/%m/%Y') ##convert date to class
EG$DateTime=as.POSIXct(paste(EG$Date,EG$Time)) ##time to class
DateTime <- EG$DateTime ##new column for Date_Time as class var

png("plot2.png", width=480, height=480)
plot(x=DateTime,y=EG$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

