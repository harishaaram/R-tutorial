# 20 news dataset:

#Dimensionality reduction on 20news group dataset

rm(list = ls())
setwd('/home/harish/PycharmProjects/Advanced_Data_Mining')

#install
install.packages("nlp")
install.packages("tm", dependencies=TRUE) # for text mining
install.package("SnowballC") # for text stemming
install.packages("wordcloud") # word-cloud generator
install.packages("RColorBrewer") # color palettes

# Load
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")