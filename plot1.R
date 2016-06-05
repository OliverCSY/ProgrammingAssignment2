household <- read.csv('household_power_consumption.txt',sep=';',header = TRUE, colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'),na.strings = '?')
household_subset <- household[which(household$Date=='1/2/2007' | household$Date=='2/2/2007'),]

png('plot1.png',width=480,height=480)
hist(household_subset$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
dev.off()