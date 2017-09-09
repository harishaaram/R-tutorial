#Dimensionality reduction on Yelp dataset and 20news group dataset

rm(list = ls())
setwd('/home/harish/PycharmProjects/Advanced_Data_Mining')
yelpDataLoc = '/home/harish/PycharmProjects/Outside_github/largeFileSize/ADM/yelp_dataset/dataset/business.json'

#READING dataset
install.packages("rjson")#package for json

# Load the package required to read JSON files.
library('jsonlite')
yelp <- stream_in(file(yelpDataLoc))
head(yelp, 5)

# str(yelp)#shows the dataframe within a dataframe
# 
# yelp_flat <- flatten(yelp)#nested hiearchical data structure into a flatten manner
# str(yelp_flat)#check
# 
# install.packages("tibble")
# library(tibble)
# yelp_tbl <- as_data_frame(yelp_flat)
# yelp_tbl

