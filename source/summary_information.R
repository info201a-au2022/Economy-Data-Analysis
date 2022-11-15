# source file that calculates summary information to be included 
# in your report
library(tidyverse)

#DataFrames
avg_income <- read.csv("../data/avg_income_yearly.csv", stringsAsFactors = FALSE)
house_prices <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
credit_class <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)

source("tables_summary.R")

sum_percent_income <- function() {
  change_1 <- avg_income %>% 
    sum(PercentChange, na.rm = TRUE) %>% 
    pull(change_1)
  return(change_1)
}
sum(avg_income$PercentChange, na.rm = TRUE)

sum_percent_house <- sum(house_prices$PercentChange, na.rm = TRUE)






