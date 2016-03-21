library(shiny)

server <- shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  output$histPlot1 <- renderPlot({
    conIn <- file("data/State Average Debt.csv","r")
    tbl <- read.csv(conIn)
    tbl_df <- data.frame(tbl)
    hist(tbl$AverageDebt, freq = T, breaks = 15, main = paste("Histogram of",
        " Average State Debt"), xlab = "Average Debt", ylab = "Number of States", col = "Tan",
        border = "black", ylim = c(0, 15), xlim = c(18000, 34000))
    close(conIn)
  })
  output$table1 <- renderDataTable(data.frame(read.csv("data/State Average Debt.csv")))
})
