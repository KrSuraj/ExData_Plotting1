plot2<-function(){
  par(mfrow= c(1,1))
  df<-read.csv("household_power_consumption.txt", sep = ";", na.strings =  "?")
  df2<- df[df$Date == "1/2/2007"| df$Date == "2/2/2007",]
  td<-paste(as.Date(df2$Date, "%d/%m/%Y"),df2$Time, sep = " ")
  td2<-as.POSIXlt(td)
  plot(td2,df2$Global_active_power,type = "l", ylab = "Global Active Power (kilowatts)", xlab = " ")
  dev.copy(png, file ="plot2.png")
  dev.off()
}

