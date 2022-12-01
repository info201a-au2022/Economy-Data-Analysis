#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

credit_classification <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
avg_income <- read.csv("../data/avg_income_yearly.csv")

intro_panel <- tabPanel(
  "Introduction",
  titlePanel("US Economy: Socioeconomic & House Market")
)

interaction_one <- tabPanel(
  "Graph 1",
  titlePanel("Title")
)

interaction_two <- tabPanel(
  "Graph 2",
  titlePanel("Title")
)

interaction_three <- tabPanel(
  "Graph 3",
  titlePanel("Title")
)

conclusion_panel <- tabPanel(
  "Conclusion",
  titlePanel("Summary Takeaways")
)

shinyUI <- navbarPage(
  h4("Navigation"),
  intro_panel,
  interaction_one,
  interaction_two,
  interaction_three,
  conclusion_panel
)
