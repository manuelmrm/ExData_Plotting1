#Plot2
> data <- read.csv("~/Documents/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
> data$Date <- as.Date(data$Date, format="%d/%m/%Y")
> data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
> png(filename="Plot2.png", width=480, height=480)
> plot.ts(data$Global_active_power, ylab="Global Active Power (kilowatts)")
> dev.off()
