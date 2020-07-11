## plot 4

source("get_data.R")

png(filename = "plot4.png")

par(mfrow = c(2,2))

with(
    data, 
    plot(
        Time, 
        Global_active_power, 
        type = "l",
        xlab = " ",
        ylab = "Global Active Power (kilowatts)"
    )
)

with(
    data,
    plot(
        Time,
        Voltage,
        type = "l",
        ylab = "Voltage",
        xlab = "datetime"
    )
)

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
    lwd = 1,
    bty = "n"
)

with(
    data,
    plot(
        Time,
        Global_reactive_power,
        type = "l",
        xlab = "datetime",
        ylab = "Global_reactive_time"
    )
)

dev.off()
