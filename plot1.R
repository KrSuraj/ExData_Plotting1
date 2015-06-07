plot1<-function()
  {
      df<-read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")
      data3<- df[df$Date == "1/2/2007"| df$Date == "2/2/2007",]
      hist(data3$Global_active_power, col = "red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
      dev.copy(png,file="plot1.png", width = 480, height = 480)
      dev.off()
}




