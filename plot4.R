data <- read.csv("data.csv")
png(file="plot4.png", width=480, height=480)
data$dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))
plot(data$dateTime, data$Global_active_power, xlab = "",
     ylab = "Global Active Power", type = "l")

plot(data$dateTime, data$Voltage, xlab = "datetime(Cyrillic)",
     ylab = "Voltage", type = "l")

plot(data$dateTime, data$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "l", col="black")
lines(data$dateTime, data$Sub_metering_2, col="red")
lines(data$dateTime, data$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1), col=c("black", "red", "blue"), box.col="white")    

plot(data$dateTime, data$Global_reactive_power, xlab = "datetime(Cyrillic)",
     ylab = "Global_reactive_power", type = "l")
dev.off()