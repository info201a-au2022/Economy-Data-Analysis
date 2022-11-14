# source file that creates a table of summary information 
# to be included in your report

# Files
credit_classification <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)

#Table Summaries
house_table_summary <- house_price %>% 
  group_by(FirstQuarterYearly) %>% 
  select(AverageSalesPricesOfHousesInTheUS)

credit_table_summary <- credit_classification %>% 
  group_by(Occupation) %>% 
  select(Annual_Income)

