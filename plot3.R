## plot 3

source("get_data.R")

png(filename = "plot3.png")

plot(
    data$Time,
    data$Sub_metering_1,
    type="l",
    xlab = " ",
    ylab="Energy sub metering",
)

points(
    data$Time,
    data$Sub_metering_2,
    type="l",
    col="red"
)

points(
    data$Time,
    data$Sub_metering_3,
    type="l",
    col="blue"
)

legend(
    "topright",
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    lwd = 1
)

dev.off()
