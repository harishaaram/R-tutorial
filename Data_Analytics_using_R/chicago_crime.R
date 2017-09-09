#Chicago crime- Motor Vehicle Theft dataset
rm(list = ls())
setwd('/home/harish/R/Data_Analytics_using_R')

mvt = read.csv("mvt.csv")
str(mvt)
mvt$Arrest = as.numeric(mvt$Arrest)
mvt$Domestic = as.numeric(mvt$Domestic)
str(mvt)
summary(mvt)

DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
mvt$Date = DateConvert
mvt$month = months(DateConvert)
mvt$weekday = weekdays(DateConvert)

#Few motor vehicle theft
mvt$month[which.min(mvt$Date)]

#max motor vechicle theft
mvt$month[which.max(mvt$Date)]

#arrest vs month
table(mvt$Arrest, mvt$month)

#visualizing crime trends
jpeg('mvtdate2.jpg',width = 1280, height = 720)
hist(mvt$Date, breaks = 100)
dev.off()
#no. of arrest vs time frame 
boxplot(mvt$Date~ mvt$Arrest)

table(mvt$Arrest, mvt$Year == '2001')
(2152)/(2152+18517)
table(mvt$Arrest, mvt$Year == '2007')
(1212)/(1212+13068)
table(mvt$Arrest, mvt$Year == '2012')

#popular locations
table(mvt$LocationDescription)
sort(table(mvt$LocationDescription))

#TOP 5 data
top5 = subset(mvt, LocationDescription =="STREET" | LocationDescription =="GAS STATION" | LocationDescription =="ALLEY" | LocationDescription =="PARKING LOT/GARAGE(NON.RESID.)"| LocationDescription =="DRIVEWAY - RESIDENTIAL")
#factoring to only 5 category
top5$LocationDescription = factor(top5$LocationDescription)
str(top5$LocationDescription)

#after factoring, which day most occrance did it occur?
table(top5$weekday,top5$LocationDescription)
