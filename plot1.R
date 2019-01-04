# Assumes that relevant data is loaded into a variable `power`. 
# See `data.R` for loading the data.

# Reset
dev.off()

# Generate histogram
hist(power$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")

# Write PNG
dev.copy(png, filename = "./plot1.png", width = 480, height = 480)
dev.off()