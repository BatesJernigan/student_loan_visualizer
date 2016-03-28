library(shiny)
library(ggplot2)

server <- shinyServer(function(input, output) {

  #----------------------------------Cliff's Functions------------------------------------------------------------------
  output$histPlot1 <- renderPlot({
    conIn <- file(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), ".csv"),"r")
    tbl <- read.csv(conIn)
    tbl_df <- data.frame(tbl)
    close(conIn)
    #hist(tbl$AverageDebt, freq = T, breaks = 20, main = paste("Histogram of",
    #" Average State Debt"), xlab = "Average Debt", ylab = "Number of States", col = "Tan",
    #border = "black", ylim = c(0, 15), xlim = c(10000, 400000))
    ggplot(data=tbl, aes(tbl$AverageDebt)) +
      geom_histogram(breaks=seq(10000, 40000, by =500), col="red", aes(fill=..count..))})

  output$table1 <- renderDataTable(
    data.frame(read.csv(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), ".csv"))))

  output$table2 <- renderTable(
    read.csv(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), "Analysis.csv")), include.rownames=FALSE)
  #---------------------------------------------------------------------------------------------------------------------
  })
