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
library(shinythemes)

credit_classification <- read.csv("../data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("../data/house_prices.csv", stringsAsFactors = FALSE)
avg_income <- read.csv("../data/avg_income_yearly.csv")

intro_panel <- tabPanel(
  "Introduction",
  titlePanel(strong("US Economy: Socioeconomic & House Market")),
  hr(style = "border-top: 1px solid #000000;"),
  p("The US economy is considered one of the strongest economies in the world. In our mixed market economy, the US continuously exhibits strengths. 
    However, during the COVID-19 pandemic our economy took several hits. Job growth slowed, overall wages were lost and ultimately the 
    economy and the housing markets had been negatively affected. Due to the changing atmosphere of America's economic systems, 
    we decided to focus our project on the highs and lows of the economy and housing market. Specifically, we want to answer which demographics have suffered 
    under our economic systems, the assets these groups have, and what resources have helped alter the economic landscape . To help find those answers we plan to use data 
    that gives information relating to the socioeconomic statuses of citizens. The information from the data includes occupation, annual incomes, salaries, bank loans, credit scores, and more."),
  br(),
  img("", src="https://www.bea.gov/system/files/gdp3q22-adv-chart-01.png", height = 250, width = 500)
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
  titlePanel("Summary Takeaways"),
  sidebarLayout(
    position = "right",
    sidebarPanel(
      h4(strong("About Us")),
      p("Special thanks to project members for allocating resources and utilizing R in order to create a project overviewing the economic patterns in the US!"),
      p("Lesther Dumosmog || ldumos@uw.edu"),
      p("Amy Oguejiofor || amyo6@uw.edu"),
      p("Nuria Abas Ibrahim || nuriai2@uw.edu")
    ),
    mainPanel()
  )
)

report_panel <- tabPanel(
  "Report",
  titlePanel("US Economy Report"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      h2("US Economy Report"),
      p("Affiliation: INFO-201: Technical Foundations of Informatics - The Information School - University of Washington"),
      p("Date: Autumn 2022"),
      p("Project: credit_class"),
      hr(style = "border-top: 1px solid #000000;")
    )
  )
)

shinyUI <- navbarPage(
  h4("Navigation"),
  theme = shinytheme("yeti"),
  intro_panel,
  interaction_one,
  interaction_two,
  interaction_three,
  conclusion_panel,
  report_panel
)
