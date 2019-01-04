# Assumes that relevant data is loaded into a variable `power`. 
# See `data.R` for loading the data.

# Reset
dev.off()

# Generate line graph
plot(power$DateTime, power$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

# Write PNG
dev.copy(png, filename = "./plot2.png", width = 480, height = 480)
dev.off()