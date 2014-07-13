##############
# Plot 3
##############
source("readPowerData.R")
png(filename = "plot3.png")
plot(datetime,power$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(datetime, power$Sub_metering_2, col="red")
lines(datetime, power$Sub_metering_3, col="blue")
legend("topright", legend=names(power)[7:9], lwd=1, col=1:3)
dev.off()
