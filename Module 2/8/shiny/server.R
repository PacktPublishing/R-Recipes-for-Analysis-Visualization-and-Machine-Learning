library(shiny)
library(ISLR)
shinyServer(function(input, output) {
  
  output$stock <- renderPlot({
    
    # Render a barplot
    barplot(Portfolio[,input$stock], 
            main=input$stock,
            ylab="Returns",
            xlab="Time", col = "lightblue")
  })
})