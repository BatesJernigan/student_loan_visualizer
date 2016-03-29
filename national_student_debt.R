tabPanel(
  'National Student Debt',
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "state",
        label = "Choose a State",
        choices = state.name
      ),
      textInput.typeahead(
        id="search",
        placeholder="Choose a Job",
        local=data.frame(name=c(my_autocomplete_list)),
        valueKey = "name",
        tokens=c(1:length(my_autocomplete_list)),
        template = HTML("<p class='repo-language'>{{info}}</p> <p class='repo-name'>{{name}}</p>")
      )
    ),        
    mainPanel(plotOutput("distPlot")) # Show a plot of the generated distribution
  )
)
