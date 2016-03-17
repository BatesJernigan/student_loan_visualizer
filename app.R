
library(shinysky)
library(shiny)
my_autocomplete_list <- c("Web Developer", "Software Developer", "Finance", "Biologist",
                          "Chemist", "Physist", "Doctor", "Engineer", "Manager")

# Define UI for application that draws a histogram
ui <- shinyUI(fluidPage(
   
   # Application title
   titlePanel("Student Debt and Salary by Job Data"),
   
   # Sidebar with a drop down menu for State and Job. 
   sidebarLayout(
      sidebarPanel(
            selectInput(inputId = "state",
                        label = "Choose a State",
                        choices = state.name),
            
            textInput.typeahead(id="search",
                        placeholder="Choose a Job",
                        local=data.frame(name=c(my_autocomplete_list)),
                        valueKey = "name",
                        tokens=c(1:length(my_autocomplete_list)),
                        template = HTML("<p class='repo-language'>{{info}}</p> <p class='repo-name'>{{name}}</p>")
                                
      )),
          
      
      # Show a plot of the generated distribution
  mainPanel(
         plotOutput("distPlot")
      )
   )
))

# Define server logic required to draw a histogram
server <- shinyServer(function(input, output) {
   
   output$distPlot <- renderPlot({
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2] 
      bins <- seq(min(x), max(x), length.out = input$bins + 1)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
   })
})

# Run the application 
shinyApp(ui = ui, server = server)

