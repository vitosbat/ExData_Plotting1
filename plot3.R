data <- read.csv("data.csv")
png(file="plot3.png", width=480, height=480)
data$dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S", tz="UTC")

plot(data$dateTime, data$Sub_metering_1, xlab = "",
     ylab = "Energy sub metering", type = "l")
lines(data$dateTime, data$Sub_metering_2, col="red")
lines(data$dateTime, data$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1), col=c("black", "red", "blue"))
dev.off()