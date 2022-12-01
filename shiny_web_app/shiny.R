#Library
library("shiny")

#Sources
source("../shiny_web_app/shiny_server.R")
source("../shiny_web_app/shiny_ui.R")


#COnnection
shinyApp(server = shinyServer, ui = shinyUI)
