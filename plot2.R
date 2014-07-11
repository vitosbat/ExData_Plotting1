data <- read.csv("data.csv")
png(file="plot2.png", width=480, height=480)
data$dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S", tz="UTC")
plot(data$dateTime, data$Global_active_power, xlab = "",
     ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()