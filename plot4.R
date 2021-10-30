##PNG4
## Plot
par(mfrow= c(2,2))

## Plot1
HPC_200702$Global_active_power <- as.numeric(HPC_200702$Global_active_power)
plot(HPC_200702$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "", xaxt='n')
axis(1, at = c(0, 1500, 2900), labels = c("thu","fri","sat"))

## Plot2
plot(HPC_200702$Voltage, type = "l",ylab = "Voltage", xlab = "Datetime", xaxt='n')
axis(1, at = c(0, 1500, 2900), labels = c("thu","fri","sat"))

## Plot3
plot(HPC_200702$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "", xaxt='n')
lines(HPC_200702$Sub_metering_2, type = "l", col = "red")
lines(HPC_200702$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, bty = "n", cex = 0.8, y.intersp=0.5)
axis(1, at = c(0, 1500, 2900), labels = c("thu","fri","sat"))

## Plot4
plot(HPC_200702$Global_reactive_power, type = "l",ylab = "Global_reactive_power", 
     xlab = "Datetime", xaxt='n')
axis(1, at = c(0, 1500, 2900), labels = c("thu","fri","sat"))

## Copy to a PNG file
dev.copy(png, file = "plot4.png")  
## Close the PNG device!
dev.off()