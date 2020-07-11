## plot2

source("get_data.R")

png(filename = "plot2.png")

with(
    data, 
    plot(
        Time, 
        Global_active_power, 
        type = "l",
        xlab = NULL,
        ylab = "Global Active Power (kilowatts)"
    )
)

dev.off()
