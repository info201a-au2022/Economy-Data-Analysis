# Interaction 1

source("shiny_server.R")

select_values <- c(colnames(house_and_annual[2]),colnames(house_and_annual[8]))

x_input <- checkboxGroupInput(
  "checkbox",
  h2("Checkbox Group"),
  choices = list("Average Annual Incoome" = house_and_annual$Average_price_income,
                 "Average House Price" = house_and_annual$Average_price_house),
  selected = 1
)

# It should contain:
shinyUI <- fluidPage(
  
  
  # A page header with a descriptive title
  h1("MPG Dataset Exploration"),
  
  # Your x input
  x_input,
  
  # Plot the output with the name "scatter" (defined in `app_server.R`)
  plotOutput("scatter")
)



