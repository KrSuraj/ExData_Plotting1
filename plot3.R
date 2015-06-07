plot3<-function(){
        df<-read.csv("household_power_consumption.txt", sep = ";", na.strings =  "?")
        df2<- df[df$Date == "1/2/2007"| df$Date == "2/2/2007",]
        td<-paste(as.Date(df2$Date, "%d/%m/%Y"),df2$Time, sep = " ")
        td2<-as.POSIXlt(td)
        df2$timedate<-td2
             plot(df2$timedate,df2$Sub_metering_1, type = "l",ylab = "Energy sub metering", xlab = " ",
                  )
             lines(df2$timedate,df2$Sub_metering_2,col = "red")
             lines(df2$timedate,df2$Sub_metering_3, col ="blue")
             legend("topright",col = c("black","red", "blue"),lty=1, lwd=2, bty="n", legend = c("Sub_metering_1", "Sub_metering_2",
                                                                           "Sub_metering_3"))
        dev.copy(png,file = "plot3.png",height = 480, width = 480)
        dev.off()                

}



