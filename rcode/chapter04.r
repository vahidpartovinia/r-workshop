library(lubridate)
library(car)  # for scatterplot
library(chron)

# read data:
setwd("D:/MASTER-POLY/trimister 3-Winter 2016/IND6212-Exploration des Donnees/project/codes/data")
train=read.csv("train.csv", stringsAsFactors = FALSE)
#test=read.csv("test.csv")

#dataset dimension:
cat("Number of training rows: ", nrow(train), "\n")
cat("Number of training cols: ", ncol(train), "\n")

# columns name"
names(train)

# review data:
head(train)

str(train)

# check for missing values in data:
table(is.na(train))

# plot frequency diagrams:
par(mfrow=c(4,3))
par(mar = rep(3, 4))
# Filled Density Plot
d <- density(train$season)
plot(d, main="Kernel Density of season")
polygon(d, col="green", border="green")
hist(train$weather, breaks=12, col="red")
d <- density(train$weather)
plot(d, main="Kernel Density of weather")
polygon(d, col="blue", border="blue")
# Kernel Density Plot
d <- density(train$humidity) # returns the density data 
plot(d, col = "red") # plots the results
hist(train$holiday, breaks=12, col="green")
hist(train$workingday, breaks=12, col="blue")
d <- density(train$temp) # returns the density data 
plot(d, col = "blue3") # plots the results
hist(train$atemp, breaks=12, col="blue1")
hist(train$windspeed, breaks=12, col="red")


########## feature enginerring#########
########## feature enginerring#########
# for tranforming datetime  and categorical variables we do as follows:
datetime <- ymd_hms(train$datetime)
train$datetime <- datetime
train$hour <- hour(datetime)
train$day <- as.integer(factor(wday(ymd_hms(train$datetime), label=TRUE), levels = c("Mon", "Tues", "Wed", 
                                                                                     "Thurs", "Fri", "Sat", "Sun"),ordered = TRUE))
train$month <- as.integer(factor(months(datetime) ,levels = c("January"
                                                              ,"February"
                                                              ,"March"
                                                              ,"April"
                                                              ,"May"
                                                              ,"June"
                                                              ,"July"
                                                              ,"August"
                                                              ,"September"
                                                              ,"October"
                                                              ,"November"
                                                              ,"December") ,ordered = TRUE))
train$weekend <- as.integer(factor(is.weekend(train$datetime)), levels = c("TRUE", "FALSE"), ordered = FALSE)


# plot frequency diagrams for new features:
par(mfrow=c(4,2))
par(mar = rep(2, 4))
hist(train$hour, breaks=12, col="red")
hist(train$day, breaks=12, col="blue")
hist(train$month, breaks=12, col="green")
hist(train$weekend, breaks=12, col="blue")


# compare fitted model with linear regression for raw data and data with new features 
# raw data:
lm1 <- lm(count ~ .,data = train[c("season"
                                   ,"holiday"
                                   ,"workingday"
                                   ,"weather"
                                   ,"temp"
                                   ,"atemp"
                                   ,"humidity"
                                   ,"windspeed"
                                   ,"count")])

summary(lm1)
plot(lm1, col = "green")

# data with new features:
lm2 <- lm(count ~ .,data = train[c("season"
                                   ,"holiday"
                                   ,"workingday"
                                   ,"weather"
                                   ,"temp"
                                   ,"atemp"
                                   ,"humidity"
                                   ,"windspeed"
                                   ,"hour"
                                   ,"day"
                                   ,"month"
                                   ,"count")])
summary(lm2)
plot(lm2, col = "blue")
