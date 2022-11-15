# source file that calculates summary information to be included 
# in your report
library(tidyverse)

#DataFrames
avg_income <- read.csv("../data/avg_income_yearly.csv", stringsAsFactors = FALSE)
house_prices <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
credit_class <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)

source("tables_summary.R")

#






