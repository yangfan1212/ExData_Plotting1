data <- read.table("t.txt",header = TRUE, sep=";")
data$Date<- as.Date(data$Date,"%d/%m/%Y")
data$Time <- strptime(data$Time,"%H:%M:%S")
hist(data$Global_active_power,col = "red",main = "Global Active Power")
