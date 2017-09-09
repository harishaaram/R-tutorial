#Stock Dynamics
rm(list = ls())
setwd('/home/harish/R/Data_Analytics_using_R')

IBM = read.csv("IBMStock.csv")
GE = read.csv("GEStock.csv")
CocaCola = read.csv("CocaColaStock.csv")
ProcterGamble= read.csv("ProcterGambleStock.csv")
Boeing = read.csv("BoeingStock.csv")

#Converting TO R format of dates
