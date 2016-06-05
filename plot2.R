household <- read.csv('household_power_consumption.txt',sep=';',header = TRUE, colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'),na.strings = '?')
household_subset <- household[which(household$Date=='1/2/2007' | household$Date=='2/2/2007'),]

dateandtime <- paste(household_subset$Date,household_subset$Time)
date_time <- strptime(dateandtime,'%e/%m/%Y %H:%M:%S')
png('plot2.png',width=480,height=480)
plot(date_time,household_subset$Global_active_power,type = 'l',xlab='',ylab='Global Active Power (kilowatts)')
dev.off()