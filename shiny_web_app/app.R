#Library
library(shiny)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(quantmod)
library(plotly)
library(shinythemes)

#Sources
source("shiny_server.R")
source("shiny_ui.R")


#Connection
shinyApp(server = shinyServer, ui = shinyUI)




