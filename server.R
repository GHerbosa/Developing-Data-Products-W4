library(shiny)
library(plotly)

data <- mtcars

data$am <- factor(data$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("mpg vs ", input$variable)
    })
    
    output$caption <- renderText({
        formulaText()
    })

        output$mpgPlot <- renderPlot({
        ggplot(data, aes_string(y=input$variable, x="mpg")) + geom_point()
    })
    
})