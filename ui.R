
library(shiny)
library(miniUI)

ui <- fluidPage(

    headerPanel("Car Loan Calculator - by Iris Ling Ding"),
    h4(id = "small-heading", "This is a car loan payment calculator: Please select using the dropdown box and slider below for: 1. Interest Rate 2. Term & 3. Loan Amount"),
            tags$style(HTML("#small-heading{color: blue; font-size = 10px;font-style = italics;}")),

    sidebarLayout(
        sidebarPanel(
            numericInput("I", "Interest Rate %p.a.", 
                         value = 20, min = 1, max = 20, step = 0.1),
            sliderInput("Y", "Over how many years?", 
                        1, 7, value = 6, step = 1),
            sliderInput("P", "How much would you like to borrow", 
                        10000, 100000, value = 20000, step = 1000), 
            submitButton("Confirm")

        ),

        # Main panel for output
        mainPanel(
            h4("Monthly Payment"),
            verbatimTextOutput("PMT"))
    )
)


