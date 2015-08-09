#Plot4
> data <- read.csv("~/Documents/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
> data$Date <- as.Date(data$Date, format="%d/%m/%Y")
> data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
> png(filename="Plot4.png", width=480, height=480)
> par(mfcol=c(2,2))
>  
> plot.ts(data$Global_active_power, ylab="Global Active Power")
>  
> plot.ts(data$Sub_metering_1, ylab="Energy sub metering")
> lines(data$Sub_metering_2, col="red")
> lines(data$Sub_metering_3, col="blue")
> legend("topright", lwd ="1" , col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n")
>  
> plot.ts(data$Voltage, ylab="Voltage", xlab="datetime")
>  
> plot.ts(data$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime")
> 
> dev.off()
