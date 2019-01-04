# Assumes that relevant data is loaded into a variable `power`. 
# See `data.R` for loading the data.

# Reset
dev.off()

par(mfrow = c(2, 2))

# Plot 1,1
# Generate line graph
plot(power$DateTime, power$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# Plot 1,2
# Generate line graph
plot(power$DateTime, power$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# Plot 2,1
# Generate empty plot
plot(power$DateTime, power$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")

# Add data sets
lines(power$DateTime, power$Sub_metering_1, col = "black")
lines(power$DateTime, power$Sub_metering_2, col = "red")
lines(power$DateTime, power$Sub_metering_3, col = "blue")

# Add legend
legend("topright", 
       col = c("black", "red", "blue"), 
       lwd = 1, 
       bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot 2,2
# Generate line graph
plot(power$DateTime, power$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

# Write PNG
dev.copy(png, filename = "./plot4.png", width = 480, height = 480)
dev.off()