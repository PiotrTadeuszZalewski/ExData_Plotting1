require(readr)
hpc<-read_delim("household_power_consumption.txt",
                delim=";",
                col_names=c("Date",
                            "Time",
                            "Global_active_power",
                            "Global_reactive_power",
                            "Voltage",
                            "Global_intensity",
                            "Sub_metering_1",
                            "Sub_metering_2",
                            "Sub_metering_3"),
                col_types=cols(Date=col_date(format="%d/%m/%Y"),
                               Time=col_time(format="%H:%M:%S"),
                               Global_active_power="d",
                               Global_reactive_power="d",
                               Voltage="d",
                               Global_intensity="d",
                               Sub_metering_1="d",
                               Sub_metering_2="d",
                               Sub_metering_3="d"),
                locale=locale(decimal_mark=".",grouping_mark = ","),
                na=c("?"),
                quoted_na=FALSE,
                skip=66637,
                n_max=2880)
#
png(filename="plot1.png",
    width=480,
    height=480)
#
hist(hpc$Global_active_power,
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
#
dev.off()



