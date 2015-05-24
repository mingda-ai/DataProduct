library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Predict Mean Time Between Failures of a cloud center"),
    sidebarPanel(
       h3("Instruction:"),
       h5('The Mean Time Between Failures of a cloud center is related to two parameters.'),
       h5('One is the expected run time without failure, the other is total number of the data center'),
       h5('Input the two parameters below and click submit, it will give a prediction on the right side.'),
       sliderInput('mut', 'Mean Time Between Failures for one computer',value = 10000, min = 10000, max = 50000, step = 10,),
       numericInput('id1','Number of computer', 1000, min=100, max=10000,step=10),

       submitButton('Submit')
        ),
    mainPanel(
        h3('Results of prediction'),
        verbatimTextOutput("oid1")
    )
))