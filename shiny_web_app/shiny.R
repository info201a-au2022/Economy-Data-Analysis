source("../shiny_web_app/shiny_server.R")
source("../shiny_web_app/shiny_ui.R")

shinyApp(server = shinyServer, ui = shinyUI)
