
dataFile <- "C:/Users/mkrishnamoorthy/Desktop/coursera/Exploratary/exdata/household_power_consumption.txt"
data1 <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()