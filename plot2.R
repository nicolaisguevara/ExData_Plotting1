#####################################
#  File to generate the first plot2 #
#  of the Course Project #1         #
#####################################
   

# Read the original data
all_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", 
                 stringsAsFactors=FALSE)

# Extract only data from the dates 2007-02-02 and 2007-02-02
requested_data <- all_data[which( all_data$Date == "1/2/2007" |all_data$Date == "2/2/2007" ),]

# Combine Date and Time columns into a new Datetime column
requested_data$Datetime <- paste(requested_data$Date,requested_data$Time)

# Format the DateTime column to a Date format 
requested_data$Datetime  <- strptime(requested_data$Datetime , "%d/%m/%Y %H:%M:%S")

# Plot the data
with(requested_data, plot(Datetime,Global_active_power,ylab="Global Active Power(kilowatts)", type="l",xlab=""))  ## Create plot on screen device


# Copy the plot from the screen to a png file
dev.copy(png, file = "plot2.png",width = 480, height = 480, units = "px") 

# Close the device
dev.off()  
