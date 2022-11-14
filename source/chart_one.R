# source file that creates your first chart

#libraries
library(tidyverse)
library(ggplot2)

# Dataframe
credit_classification <- read.csv("uw_classes/Info201/Assignments/project-group-7-section-ab/data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("uw_classes/Info201/Assignments/project-group-7-section-ab/data/house_prices.csv")
avg_income <- read.csv("uw_classes/Info201/Assignments/project-group-7-section-ab/data/avg_income_yearly.csv")

#Plot
unique(credit_classification$Month)


 house_plot <- ggplot(data = house_price) +
   geom_point(mapping = aes ( 
     x = FirstQuarterYearly,
     y = AverageSalesPricesOfHousesInTheUS
   ), color = "red", alpha = .3) +
   scale_y_continuous(labels = scales::comma) +  
   labs(
     x = "Date",
     y = "House Prices",
     title = "House Prices 1st Quarter (1963-2021)",
     alt = "House Prices v2"
   ) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
 house_plot
View(house_plot)

