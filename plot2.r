## Assignment - Plot #1 Code Base
## Foundation for future graphics code - 
## File downloaded from UC Irvine Machine Learning Repository not included
## reproduce from ./Data directory
## some code assistance through Quick-R and other hacking given that I'm a manager inot a FT coder 

## Get Full Data set and load it

data <- read.csv("./Data/household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", 
        nrows=2075259, check.names=FALSE, stringsAsFactors=FALSE, comment.char="", quote='\"')

## convert char dates to date values
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## Reduce the data to appropriate subset the data
data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## combine date and time columns and format
data$date_time <-paste(data$Date, data$Time)
data$date_time <- as.POSIXct(data$date_time)

## Print Plot to screen
plot( data$date_time, data$Global_active_power, type ="l",
      xlab = "", ylab = "Global Active Power (kilowatts)")

## Save the plot to desired png file 
dev.copy(png, file="plot2.png", height=480, width=480)

## close the device :)
dev.off()

