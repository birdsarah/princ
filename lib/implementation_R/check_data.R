library(hbgd)
library(feather)
# Open file to data
myArgs <- commandArgs(trailingOnly = TRUE)
data <- read_feather(myArgs)
data_check <- check_data(data)
cat(data_check)
