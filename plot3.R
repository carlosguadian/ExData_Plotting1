## PNG3
## Variables needed to numeric
HPC_200702$Sub_metering_1 <- as.numeric(HPC_200702$Sub_metering_1)
HPC_200702$Sub_metering_2 <- as.numeric(HPC_200702$Sub_metering_2)
HPC_200702$Sub_metering_3 <- as.numeric(HPC_200702$Sub_metering_3)

## Plot
plot(HPC_200702$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "", xaxt='n')
lines(HPC_200702$Sub_metering_2, type = "l", col = "red")
lines(HPC_200702$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, cex=0.8)
axis(1, at = c(0, 1500, 2900), labels = c("thu","fri","sat"))

## Copy to a PNG file
dev.copy(png, file = "plot3.png")  
## Close the PNG device!
dev.off()