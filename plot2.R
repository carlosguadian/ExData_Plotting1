## PNG2
## Plot 
HPC_200702$Global_active_power <- as.numeric(HPC_200702$Global_active_power)
plot(HPC_200702$Global_active_power, type = "l",
      ylab = "Global Active Power (kilowatts)", xlab = "", xaxt='n')
axis(1, at = c(0, 1500, 2900), labels = c("thu","fri","sat"))

## Copy to a PNG file
dev.copy(png, file = "plot2.png")  
## Close the PNG device!
dev.off()