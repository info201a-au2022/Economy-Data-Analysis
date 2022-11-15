# source file that calculates summary information to be included 
# in your report
library(tidyverse)

#DataFrames
avg_income <- read.csv("../data/avg_income_yearly.csv", stringsAsFactors = FALSE)
house_prices <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
credit_class <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)

source("tables_summary.R")

sum_percent_income <- sum(avg_income$PercentChange, na.rm = TRUE)

sum_percent_income_v2 <- function () {
  percent_change <- avg_income %>% 
    summarize(total_change = sum(PercentChange, na.rm=TRUE)) %>% 
    pull(total_change)
  return(percent_change)
}

sum_percent_house <- sum(house_prices$PercentChange, na.rm = TRUE)

#chart2 summary information
# Get Max of the multiple columns
num_col <- ncol(credit_class)
num_row <- nrow(credit_class)

max_income <- max(credit_class[["Annual_Income"]])
avg_income <- mean(credit_class[["Annual_Income"]])
min_income <- min(credit_class[["Annual_Income"]])
median_income <- median(credit_class[["Annual_Income"]])




