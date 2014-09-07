#####################################
#  File to generate the first plot1 #
#  of the Course Project #1         #
#####################################


# Read the original data
all_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", 
                 stringsAsFactors=FALSE)

# Extract only data from the dates 2007-02-02 and 2007-02-02
requested_data <- all_data[which( all_data$Date == "1/2/2007" |all_data$Date == "2/2/2007" ),]

# Plot a histogram
hist(requested_data$Global_active_power, col = "red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

# Copy the plot from the screen to a png file
dev.copy(png, file = "plot1.png",width = 480, height = 480, units = "px") 

# Close the device
dev.off()  
