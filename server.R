library(shiny)
library(ggplot2)

server <- shinyServer(function(input, output) {
  #----------------------------------Cliff's Functions------------------------------------------------------------------
  output$histPlot1 <- renderPlot({
    conIn <- file(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), ".csv"),"r")
    tbl <- read.csv(conIn)
    tbl_df <- data.frame(tbl)
    close(conIn)
    ggplot(data=tbl, aes(tbl$AverageDebt), xlab = "Average State Debt") + 
      geom_histogram(breaks=seq(10000, 40000, by =500), 
                     col="red", 
                     aes(fill=..count..))+ 
      labs(title="Histogram for Average Debt by State") +
      labs(x="Average Debt", y="Number of States")
  })

  output$table1 <- renderDataTable(
    data.frame(read.csv(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), ".csv"))))

  output$table2 <- renderTable(
    read.csv(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), "Analysis.csv")), include.rownames=FALSE)
  #---------------------------------------------------------------------------------------------------------------------
})
