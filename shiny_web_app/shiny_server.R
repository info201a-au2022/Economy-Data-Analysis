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
library(ggplot2)
library(quantmod)


credit_classification <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
avg_income <- read.csv("../data/avg_income_yearly.csv")

rename_house <- house_price %>% 
  rename("Average_price_income" = "AverageSalesPricesOfHousesInTheUS") %>% 
  rename("Year" = "FirstQuarterYearly") %>% 
  mutate(Year = as.numeric(str_sub(Year, 5,8)))

rename_income <- avg_income %>% 
  rename("Average_income" = "AverageIndividualIncome") %>% 
  mutate(Average_price1 = str_sub(Average_income, 2, 7)) %>% 
  mutate(Average_price_house = as.numeric(str_remove_all(Average_price1, "[.,]")))
  
house_and_annual <- left_join(rename_house, rename_income, by = "Year")

# Define server logic required to draw a histogram
shinyServer <- function (input, output){
  

  
# Render Graph 1

  output$graph_1 <- renderPlot({
    house_plot <- ggplot(data = house_and_annual) +
      geom_point(mapping = aes_string ( 
          x = house_and_annual$Year,
          y = input$y_input
      ), color = "red", alpha = .3) +
      scale_y_continuous(labels = scales::comma) +  
      labs(
        x = "Year",
        y = "Average Price",
        title = "House Prices in Comparison with average Annueal Income"
      ) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
    house_plot
  })
  
}

 

