## PNG1
## Plot
HPC_200702$Global_active_power <- as.numeric(HPC_200702$Global_active_power)
hist(HPC_200702$Global_active_power, main = "Global Active Power", col = "red", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
## Copy to a PNG file
dev.copy(png, file = "plot1.png")  
## Close the PNG device!
dev.off()