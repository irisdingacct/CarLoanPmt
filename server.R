server <- function(input, output){
    output$PMT <- renderPrint({
        P <- as.numeric(input$P)
        I <- as.numeric(input$I)
        Y <- as.numeric(input$Y)
        PMT <- (P*(I/1200)/(1-(1+I/1200)^(-Y*12)))
        PMT
    })
}

