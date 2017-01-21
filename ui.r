library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Loan Calculator"),
    
    sidebarPanel(
      numericInput("amount", 'Enter Loan Amount', 0) ,
      numericInput("rate", 'Enter interest Rate %', 0.0, min = 0.2, max = 3, step = 0.01),
      numericInput("period", 'Enter Loan duration (Year)', 0, min = 0.2, max = 3, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel(
      p('This is Loan calculator, compute Your montly installament'),
      h4('Your Monthly installament'),
      strong(verbatimTextOutput("calculating"))
      
    )
    
  )   
)