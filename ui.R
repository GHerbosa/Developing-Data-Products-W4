library(shiny)
shinyUI(fluidPage(
    
    # Title of the Application
    titlePanel("Cars Dataset - Miles per Gallon (mpg)"),
    
    sidebarPanel(
        selectInput("variable", "Variable:", 
        c("Cylinders" = "cyl",
        "Transmission" = "am",
        "Gears" = "gear"))
    ),
    
    mainPanel(
        # Output: Caption text format ----
        h3(textOutput("caption")),
        
        # Output: Plot variable selected vs mpg ----
        plotOutput("mpgPlot")
    )
))