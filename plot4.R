##############
# Plot 4
##############
source("readPowerData.R")

png(filename = "plot4.png")
par(mfcol=c(2,2))

plot(datetime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(datetime,power$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(datetime, power$Sub_metering_2, col="red")
lines(datetime, power$Sub_metering_3, col="blue")
legend("topright", legend=names(power)[7:9], lwd=1, col=1:3, bty="n", cex=.75)

plot(datetime,power$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, power$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
