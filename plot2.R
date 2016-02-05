## extra dates already removed from my file for speed
pw <- read.table('power.txt',sep=";",header=TRUE);  

png("plot2.png", 
     width=480, 
     height=480, 
     units="px", 
     bg="white");

plot(pw$Global_active_power, 
     type="s", 
     axes=FALSE,
     ann=FALSE);

box();

axis(1, 
     at=c(1,length(pw$Date)/2, length(pw$Date)), lab=c("Thu","Fri","Sat"), 
     las=1)
axis(2, at=c(0,2,4,6));

title(ylab="Global Active Power (kilowatts)")

dev.off();
