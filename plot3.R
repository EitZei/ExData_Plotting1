# Assumes that relevant data is loaded into a variable `power`. 
# See `data.R` for loading the data.

# Reset
dev.off()

# Generate empty plot
plot(power$DateTime, power$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")

# Add data sets
lines(power$DateTime, power$Sub_metering_1, col = "black")
lines(power$DateTime, power$Sub_metering_2, col = "red")
lines(power$DateTime, power$Sub_metering_3, col = "blue")

# Add legend
legend("topright", col = c("black", "red", "blue"), lwd = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Write PNG
dev.copy(png, filename = "./plot3.png", width = 480, height = 480)
dev.off()