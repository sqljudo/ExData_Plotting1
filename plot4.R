
## extra dates already removed from my file for speed
pw <- read.table('power.txt',sep=";",header=TRUE);  

png("plot4.png", 
     width=480, 
     height=480, 
     units="px", 
     bg="white");


## Create 2x2 panel

par(mfrow=c(2,2))

## PLOT 1

plot(pw$Global_active_power, 
     type="s", 
     axes=FALSE,
     ann=FALSE);

box();

axis(1, 
     at=c(1,length(pw$Date)/2, length(pw$Date)), lab=c("Thu","Fri","Sat"), 
     las=1)
axis(2, at=c(0,2,4,6));

title(ylab="Global Active Power")

## PLOT 2

plot(pw$Voltage, 
     type="s", 
     axes=FALSE,
     ann=FALSE);

box();

axis(1, 
     at=c(1,length(pw$Date)/2, length(pw$Date)), lab=c("Thu","Fri","Sat"), 
     las=1);
axis(2);

title(ylab="Voltage", xlab="datetime");

## PLOT 3

plot(pw$Sub_metering_1, type="S", axes=FALSE, ann=FALSE)
lines(pw$Sub_metering_2, type="S", col="red")
lines(pw$Sub_metering_3, type="S", col="blue")

box();

axis(1, 
     at=c(1,length(pw$Date)/2, length(pw$Date)), lab=c("Thu","Fri","Sat"), 
     las=1);
axis(2, at=c(0,10,20,30));

title(ylab="Energy sub metering");

legend('topright', 
       c("Sub metering 1",
         "Sub metering 2",
         "Sub metering 3"), 
       col=c("black","red","blue"), 
       lty=1,
       bty="n");

## PLOT 4

plot(pw$Global_reactive_power, 
     type="s", 
     axes=FALSE,
     ann=FALSE);

box();

axis(1, 
     at=c(1,length(pw$Date)/2, length(pw$Date)), lab=c("Thu","Fri","Sat"), 
     las=1);
axis(2);

title(xlab="datetime", ylab="Global_reactive_power");

## CLOSE OUT DEVICE

dev.off();
