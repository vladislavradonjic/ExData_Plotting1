## plot1
source("get_data.R")

png(filename = "plot1.png")

hist(data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
