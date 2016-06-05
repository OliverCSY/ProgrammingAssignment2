household <- read.csv('household_power_consumption.txt',sep=';',header = TRUE, colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'),na.strings = '?')
household_subset <- household[which(household$Date=='1/2/2007' | household$Date=='2/2/2007'),]

dateandtime <- paste(household_subset$Date,household_subset$Time)
date_time <- strptime(dateandtime,'%e/%m/%Y %H:%M:%S')
png('plot3.png',width=480,height=480)
plot(date_time,household_subset$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(date_time,household_subset$Sub_metering_2,type='l',col='red')
lines(date_time,household_subset$Sub_metering_3,type='l',col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()