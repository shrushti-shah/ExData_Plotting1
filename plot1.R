
library(tidyverse) #loading required package

EG <- read.table("ATP/household_power_consumption_edited.txt", header=TRUE, sep="\t", 
                 na.strings="NA", dec=".", strip.white=TRUE) ##loading data 
#only reading 2-day data in February 2007

head(EG) ##exploring data
dim(EG) 
names(EG) ##checking variables

plot1 <- hist(EG$Global_active_power, col = "red", main = "Global Active Power", 
              xlab = "Global Active Power (kilowatts)") ##plotting first plot

png(filename = "plot1.png", width = 480, height = 480) #saving the plot
png(plot1)
dev.off()

