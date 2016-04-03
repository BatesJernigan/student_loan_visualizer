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
  
  output$pieChart <- renderPlot({
    costs_df <- data.frame(read.csv("data/AverageCost/National&StateAverageCosts.csv"))
    new_df <- subset(costs_df, Name == input$category)
    total <- sum(new_df$TotalCost)
    
    sectors <- new_df$TotalCost/total 
    labels1 <- new_df$Year
    percent <- round(sectors/sum(sectors)*100)
    labels1 <- paste(labels1, percent)
    labels1 <- paste(labels1,"%",sep="") 
    pie(sectors,labels = labels1, col = gray(seq(0.4, 1.0, length = 6)),
        main="Pie Chart of Average Cost")
  })
  
  output$scatterPlot <- renderPlot({
    if((input$unem == 'Men Bachelors and Higher Long Term')|(input$unem == 'Women Bachelors and Higher Long Term')){
      line_df <- data.frame(read.csv(paste0(paste0("data/Unemployment/Unemployment_", input$unem), ".csv")))
      line_df$Date <- as.character(line_df$Date)
      Year <- line_df$Year
      qplot(line_df$Date, line_df$Percentage, data=line_df, geom="point", colour = Year , ylim= c(0,6),xlab="Date", ylab="Percent of Unemployment")
    }else{
      line_df <- data.frame(read.csv(paste0(paste0("data/Unemployment/Unemployment_", input$unem), ".csv")))
      line_df$Date <- as.character(line_df$Date)
      line_df$Date <- factor(line_df$Date, levels=unique(line_df$Date))
      qplot(line_df$Date, line_df$Percentage, data=line_df, geom="point", ylim= c(0,6),xlab="Date", ylab="Percent of Unemployment")
    }
  })
  
  output$boxPlot <- renderPlot({
    costs_df <- data.frame(read.csv("data/AverageCost/National&StateAverageCosts.csv"))
    new_df <- subset(costs_df, Year == input$Year1)
    
    boxplot(new_df$TotalCost ~ new_df$Year,data=new_df, main="Box Plot of Average Cost Per Year", 
      xlab="Year", ylab="Average Cost", ylim = c(10000, 50000)) 
  })

  output$table1 <- renderDataTable(
    data.frame(read.csv(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), ".csv"))))

  output$table2 <- renderTable(
    read.csv(paste0(paste0("data/StateDebt/StateAverageDebt",input$Year), "Analysis.csv")), include.rownames=FALSE)
  
  output$table3 <- renderDataTable(data.frame(read.csv("data/AverageCost/National&StateAverageCosts.csv")))
  
  #---------------------------------------------------------------------------------------------------------------------
})
