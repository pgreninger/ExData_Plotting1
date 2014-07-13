##############
# Plot 2
##############
source("readPowerData.R")
png(filename = "plot2.png")
plot(datetime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
