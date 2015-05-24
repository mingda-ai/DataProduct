
library(shiny)

cloudRunTime <- function(runTime, number) runTime/number 

shinyServer(
    function(input, output) {
        output$oid1<-renderPrint({cloudRunTime(input$mut, input$id1)})
    }
)