## This script reads household power consumption data for 2007-02-01 and 2007-02-02 from
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
## downloaded on 2014-07-12. The file was pre-processed using grep to extract the dates
## of interest. The full file contains 2,075,259 rows. The filtered data contains 2880 rows.
## The following command was used to filter the data:
##    grep ^[1-2]/2/2007 household_power_consumption.txt > household_power2.txt
##
## Note that the filtered data does not contain a header row.
## The script assumes the household_power2.txt file is in your working directory
## setwd("~/coursera/DataScience")

# define column classes
classes<-c(rep("character",2), rep("numeric",7))

# read file - note that csv2 assumes "," as decimal separator so override default.
power<-read.csv2("household_power2.txt", dec=".", header=FALSE, stringsAsFactors=FALSE, colClasses=classes)

# get header row from original file and set column names 
heading<-read.csv2("household_power_consumption.txt", header=FALSE, stringsAsFactors=FALSE, nrows=1)
colnames(power)<-heading[1,]

# create datetime object from date and time strings
datetime<-paste(power$Date, power$Time)
datetime<-as.POSIXlt(datetime, format="%d/%m/%Y %H:%M:%S")




