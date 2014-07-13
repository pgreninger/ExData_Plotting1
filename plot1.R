##############
# Plot 1
##############
source("readPowerData.R")
png(filename = "plot1.png")
hist(power$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
