## Open file
HPC <- read.csv("~/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings = "NA")

## Load libraries
library(tidyr)
library(lubridate)
library(chron)

## Convert data to correct format
HPC$Date <- dmy(HPC$Date)

## Convert time to correct format
HPC$Time <- chron(times=HPC$Time)

## Subset data
HPC_200702 <- HPC[HPC$Date >= "2007-02-01" & HPC$Date <= "2007-02-02", ]