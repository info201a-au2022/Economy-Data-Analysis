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

shinyUI <- navbarPage(
  "Introduction",
  intro_panel
  # plot 1
  # plot 2
  # plot 3
  # conclusion_panel
)
