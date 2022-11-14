# source file that calculates summary information to be included 
# in your report
library(tidyverse)

#DataFrames
avg_income <- read.csv("uw_classes/Info201/Assignments/project-group-7-section-ab/data/avg_income_yearly.csv")

#Average percent change in income
avg_percent_change_income <- avg_income %>% 
  summarise(sum(avg_income$PercentChange)



