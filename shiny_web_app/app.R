#Library
library(shiny)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(quantmod)
library(plotly)
library(shinythemes)
library(DT)

#Sources
source("../shiny_web_app/shiny_server.R")
source("../shiny_web_app/shiny_ui.R")


#COnnection
shinyApp(server = shinyServer, ui = shinyUI)
