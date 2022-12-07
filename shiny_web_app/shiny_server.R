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
library(plotly)
library(ggplotly)


credit_classification <- read.csv("data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("data/house_prices.csv", stringsAsFactors = FALSE)
avg_income <- read.csv("data/avg_income_yearly.csv")
income_df <- read.csv("data/income_race.csv", stringsAsFactors = FALSE)
poverty_percent <- read.csv("data/percent_poverty.csv", stringsAsFactors =  FALSE)
map_poverty <- read.csv("data/map_poverty_areas - raw_data.csv", stringsAsFactors = FALSE)

rename_house <- house_price %>% 
  rename("Average_price_income" = "AverageSalesPricesOfHousesInTheUS") %>% 
  rename("Year" = "FirstQuarterYearly") %>% 
  mutate(Year = as.numeric(str_sub(Year, 5,8)))

rename_income <- avg_income %>% 
  rename("Average_income" = "AverageIndividualIncome") %>% 
  mutate(Average_price1 = str_sub(Average_income, 2, 7)) %>% 
  mutate(Average_price_house = as.numeric(str_remove_all(Average_price1, "[.,]")))

house_and_annual <- left_join(rename_house, rename_income, by = "Year")

house_and_annual_v1 <- house_and_annual %>% 
  select(Year, Average_price_income, Average_price_house) %>%
  rename("Average_house_price" = "Average_price_income") %>% 
  rename("Average_annual_income" = "Average_price_house") %>% 
  group_by(Year)

percent_change_df <- house_and_annual %>% 
  rename("Percent_change_house" = "PercentChange.x") %>% 
  rename("Percent_change_income" = "PercentChange.y") %>% 
  select(Year, Percent_change_income, Percent_change_house) %>% 
  group_by(Year)
percent_change_df = percent_change_df[-1,]

poverty_percent_f <- poverty_percent %>% 
  mutate(under_18 = as.numeric(str_remove_all(Under.18, "[%]"))) %>%
  mutate(x18_to_64 = as.numeric(str_remove_all(X18.to.64, "[%]"))) %>% 
  mutate(x65_and_older = as.numeric(str_remove_all(X65.and.older, "[%]"))) %>% 
  select(Year,under_18,x18_to_64,x65_and_older) %>% 
  group_by(Year)

graph2_dataframe <- credit_classification %>% 
  select(Annual_Income, Occupation) %>% 
  group_by(Occupation)

graph2_dataframev2 <- distinct(graph2_dataframe)

graph2_dataframev2 <- graph2_dataframe %>% 
  group_by(Occupation)

graph2_dataframev2 <- distinct(graph2_dataframe)

map_povertyv2 <- map_poverty %>% 
  select(Location, White, Black, Hispanic, Asian.Native.Hawaiian.and.Pacific.Islander, American.Indian.Alaska.Native) %>% 
  group_by(Location)




# Define server logic required to draw a histogram
shinyServer <- function (input, output){
  
# Render Graph 1
  
  output$graph_1 <- renderPlot({
    graph1_plot <- ggplot(data = house_and_annual_v1) +
      geom_point(mapping = aes_string (
          x = house_and_annual_v1$Year,
          y = input$y_input
      ), color = "red", alpha = .3) +
      scale_y_continuous(labels = scales::comma) +  
      labs(
        x = "Year",
        y = "Average Price",
        title = "House Prices in Comparison with average Annual Income"
      ) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
    graph1_plot
  })

    
  output$mytable <- DT::renderDataTable({
    percent_change_df
  })
  
#################################
output$graph_2 <- renderPlot({
  graph2_plot <- ggplot(data = graph2_dataframe) +
    geom_col(mapping = aes(
      x = graph2_dataframe$Annual_Income,
      y = input$graph2_input
    ), color = "blue") +
    xlim(0,100)+
    labs(
      x = "Age",
      y = "Annual Income",
      title = "Annual Income in Relation to Age"
    ) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  graph2_plot
})
#################################
 output$graph_3 <- renderPlot({
   graph3_plot <- ggplot(data = poverty_percent_f) +
     geom_line(mapping = aes_string (
       x = poverty_percent_f$Year,
       y = input$graph3_input
     ), color = "purple") +
     labs(
       x = "Year",
       y = "Percentage in Poverty",
       title = "Percent in poverty by age (1975 - 2020)"
     ) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
   graph3_plot
 })
}


