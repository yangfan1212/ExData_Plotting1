data <- read.table("t.txt",header = TRUE, sep=";")
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

plot(data$DateTime,data$Sub_metering_1,xlab = "",ylab = "Energy sub metering",type = "l")
lines(data$DateTime,data$Sub_metering_2,col = "red")
lines(data$DateTime,data$Sub_metering_3,col = "blue")

legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)