## extra dates already removed from my file for speed
pw <- read.table('power.txt',sep=";",header=TRUE);  

png("plot3.png", 
     width=480, 
     height=480, 
     units="px", 
     bg="white");

plot(pw$Sub_metering_1, type="S", axes=FALSE, ann=FALSE)
lines(pw$Sub_metering_2, type="S", col="red")
lines(pw$Sub_metering_3, type="S", col="blue")

box();

axis(1, 
     at=c(1,length(pw$Date)/2, length(pw$Date)), lab=c("Thu","Fri","Sat"), 
     las=1)
axis(2, at=c(0,10,20,30));

title(ylab="Energy sub metering")

legend('topright', 
       c("Sub metering 1",
         "Sub metering 2",
         "Sub metering 3"), 
       col=c("black","red","blue"), 
       lty=1)

dev.off();
