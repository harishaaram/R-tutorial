#linear regression
rm(list = ls())
setwd('/home/harish/R/Data_Analytics_using_R')

wine = read.csv("wine.csv")
str(wine)
summary(wine)

#regression model
model1 = lm(Price~AGST,data = wine)
summary(model1)

#residuals are difference btw predictive models output vs true output
model1$residuals
SSE = sum(model1$residuals^2)

model2 = lm(Price~AGST + HarvestRain,data = wine)
summary(model2)
SSE = sum(model2$residuals^2)
SSE

model3 = lm(Price~AGST + HarvestRain + WinterRain + Age + FrancePop,data = wine)
summary(model3)
SSE = sum(model3$residuals^2)
SSE

model4 = lm(Price ~ AGST + HarvestRain + WinterRain + Age, data = wine)
summary(model4)
#CORRELATION
cor(wine)

install.packages("corrplot")
require(corrplot)

wineCorMatrix = cor(wine)
corrplot(wineCorMatrix, method = "number")

#prediction for test file
winetest = read.csv("wine_test.csv")
str(winetest)
predictest=predict(model4, newdata = winetest)
predictest

#R square value for test
SSE = sum((winetest$Price - predictest)^2)
SST = sum((winetest$Price-mean(wine$Price))^2)
1-SSE/SST
