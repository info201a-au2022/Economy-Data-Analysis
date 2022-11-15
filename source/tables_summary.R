# source file that creates a table of summary information 
# to be included in your report

# Files
avg_income <- read.csv("../data/avg_income_yearly.csv", stringsAsFactors = FALSE)
house_prices <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
credit_class <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)


#Table Summaries

# 1
house_percent <- c(house_prices$PercentChange, -1)
income_percent <- c(avg_income$PercentChange)
year <- c(avg_income$Year)
house_vs_income <- data.frame(house_percent, income_percent, year)

house_vs_income <- house_vs_income %>% 
  group_by(year) %>% 
  mutate(difference = house_percent - income_percent) %>% 
  select(difference)

#2
occupation_and_age <- credit_class %>% 
  group_by(Annual_Income) %>% 
  select(Annual_Income, Age, Occupation) %>% 
  arrange(-Annual_Income, Age, Occupation)

#3



