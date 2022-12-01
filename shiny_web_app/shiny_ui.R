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
  titlePanel("US Economy: Socioeconomic & House Market"),
  p("The US economy is considered one of the strongest economies in the world. In our mixed market economy, the US continuously exhibits strengths. 
    However, during the COVID-19 pandemic our economy took several hits. Job growth slowed, overall wages were lost and ultimately the 
    economy and the housing markets had been negatively affected. Due to the changing atmosphere of America's economic systems, 
    we decided to focus our project on the highs and lows of the economy and housing market. Specifically, we want to answer which demographics have suffered 
    under our economic systems, the assets these groups have, and what resources have helped alter the economic landscape . To help find those answers we plan to use data 
    that gives information relating to the socioeconomic statuses of citizens. The information from the data includes occupation, annual incomes, salaries, bank loans, credit scores, and more."),
  img("", src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dallasfed.org%2Fresearch%2FUS&psig=AOvVaw09Fuv26AtsCiffj6LokLAU&ust=1669954889960000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCdkPXI1_sCFQAAAAAdAAAAABAD")
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
