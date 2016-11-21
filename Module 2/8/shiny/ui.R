library(ISLR)
library(shiny)

shinyUI(
  fluidPage(    
    
    # Give the page a title
    titlePanel("Stocks"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("stock", "Retruns:", 
                    choices=colnames(Portfolio)),
     hr(),
        helpText("Returns on Stock")
      ),
             
        mainPanel(
        plotOutput("stock")  
      )
    )
  )
)