data <- read.table("t.txt",header = TRUE, sep=";")
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
plot(data$DateTime,data$Global_active_power,xlab = "", ylab = "Global Active Power(kilowatts)", type = "l")