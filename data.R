# This script assumes that data already resides in working directory.
# Data can be fetched from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Read the dataset
power <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")

#Filter only intreresting dates
filter <- power$Date == "1/2/2007" | power$Date == "2/2/2007"
power <- power[filter,]

# Convert dates and times
power$DateTime <- strptime(paste(power$Date, power$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S", tz = "GMT")
