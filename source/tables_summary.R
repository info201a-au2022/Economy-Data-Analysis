# source file that creates a table of summary information 
# to be included in your report
credit_classification <- read.csv("/Users/amyofor/Documents/info201/project-group-7-section-ab/data/credit_class.csv")
View(credit_classification)
table <- credit_classification %>% 
  group_by(Age) %>%
  summarise(avg_annual_income = mean(Annual_Income, na.rm = T)) %>%
  arrange((avg_annual_income))
View(table)

