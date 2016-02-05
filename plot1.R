
## extra dates already removed from my file for speed
pw <- read.table('power.txt',sep=";",header=TRUE);  

png("plot1.png", 
     width=480, 
     height=480, 
     units="px", 
     bg="white")

hist(pw$Global_active_power, 
     breaks=12, 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power",
     col="red");

dev.off();
