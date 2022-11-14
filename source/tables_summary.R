# source file that creates a table of summary information 
# to be included in your report
credit_classification <- read.csv("../data/credit_class.csv")
View(credit_classification)
getwd()
setwd()
View(credit_classification)
table <- credit_classification %>% 
  group_by(Age) %>%
  summarise(avg_annual_income = mean(Annual_Income, na.rm = T)) %>%
  arrange((avg_annual_income))
View(table)

