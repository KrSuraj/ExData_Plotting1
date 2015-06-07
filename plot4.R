plot4<-function(){
  par(mfrow =c(2,2))
    df<-read.csv("household_power_consumption.txt", sep = ";", na.strings =  "?")
    df2<- df[df$Date == "1/2/2007"| df$Date == "2/2/2007",]
    td<-paste(as.Date(df2$Date, "%d/%m/%Y"),df2$Time, sep = " ")
    td2<-as.POSIXlt(td)
    df2$timedate<-td2
    plot(df2$timedate,df2$Global_active_power,type = "l", ylab = "Global Active Power", xlab = " ")
    plot(df2$timedate,df2$Voltage,type = "l", ylab = "Voltage", xlab = "datetime")  
    plot(df2$timedate,df2$Sub_metering_1, type = "l",ylab = "Energy sub metering", xlab = " ",
    )
    lines(df2$timedate,df2$Sub_metering_2,col = "red")
    lines(df2$timedate,df2$Sub_metering_3, col ="blue")
    legend("topright",col = c("black","red", "blue"),lty=1, lwd=1, bty="n", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),cex = 0.5)
    plot(df2$timedate,df2$Global_reactive_power,ylab = "Global_reactive_power", xlab = "datetime", type = "l")
    dev.copy(png,file = "plot4.png",height = 480, width = 480)
    dev.off()    
  
}