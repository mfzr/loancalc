library(shiny) 
library(rsconnect)
rsconnect::setAccountInfo(name='mfzr', token='8884ED880C647FFDA77311133333AB86', secret='FcCYkonK3lGFUR5MK0WroqZ/XopNnwIAG8ex9nQ5')


shinyServer(
  function(input, output) {
    
    output$calculating <- renderPrint(((1 + ((input$rate/100)*input$period))*input$amount) / (input$period*12))
    
  } 
)