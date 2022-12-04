#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(dplyr)
library(tidyverse)

credit_classification <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
avg_income <- read.csv("../data/avg_income_yearly.csv")

rename_house <- house_price %>% 
  rename("Average_price" = "AverageSalesPricesOfHousesInTheUS")

rename_income <- avg_income %>% 
  rename("Average_income" = "AverageIndividualIncome") %>% 
  mutate(Average_price = str_sub(Average_income, 2, 7)) %>% 
  mutate(avg_priceee = str_remove(Average_price, "[.,]"))
  
  

house_and_annual <- left_join(rename_house, rename_income, by="Average_price")

# Define server logic required to draw a histogram
shinyServer <- function (input, output){
  
}

output$house_price <- renderPlotly {
  return(build_scatter)
}
 

avg_income$AverageIndividualIncome
