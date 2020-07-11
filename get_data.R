if(!file.exists("data.zip")) {
    download.file(
        "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
        "data.zip"
    )
}

data <- read.table(
    unz("data.zip", "household_power_consumption.txt"), 
    header = TRUE, 
    sep = ";", 
    as.is = TRUE,
    na.strings = "?"
)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

data <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")
