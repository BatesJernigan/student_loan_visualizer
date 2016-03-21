library(shinysky)
library(shiny)
library(maps)
library(mapproj)
my_autocomplete_list <- c("Web Developer", "Software Developer", "Finance", "Biologist",
                          "Chemist", "Physist", "Doctor", "Engineer", "Manager")

# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
    "Student Loan Data",
    tabPanel(
      "Introduction",
      sidebarLayout(
        sidebarPanel(
          position = "right",
          h3("Our Team"),
          hr(),
          tags$ul(br("Bates Jernigan"), br("Christopher McNutt"), br("Nguyen, Phillip"), br("Parker Copeland"), br("Bryan MacDonald"), br("Clifton Taylor"))
        ),
        mainPanel(
          h1("Intent"),
          hr(),
          p("**SAMPLE** The  goal  of  this  app is to give basic  details about the employment situation
            for computer  programmers  for the nation, by  state, and for each county in North
            Carolina.  Our  information  is  taken straight  from BLS.GOV, the Bureau of Labor
            and Statistics, and presented using built in R  functions to represent statistical
            analysis."),
          hr(),
          h1("Goals"),
          p("**SAMPLE** Our goals are to accurately represent the current job outlook for CS students who
            plan  to  identify  as  'Computer Programmers' who are entering the workforce upon
            graduation.  We decided to use R for it's data analysis features for this task. We
            also  chose  to  utilize  the  shiny  package  for R in order to develop a web app 
            because  it is  a good example of the simplicity that R offers to its users, while 
            providing powerful analytical support.")
        )
      )
    ),
    tabPanel(
      "National Student Debt 2015",
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
    ),
    tabPanel(
      "Student Debt by State",
      sidebarLayout(
        sidebarPanel(
          selectInput(
            "Year",
            label = "Choose a year",
            choices = c("2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015")
          )
        ),
        # Show a plot of the generated distribution
        mainPanel(plotOutput("histPlot1"), dataTableOutput("table1"))
      )
    ),
    tabPanel("Debt by Education Level"),
    tabPanel("Employment Information"),
    navbarMenu(
      "More",
      tabPanel("Interest Rates"),
      tabPanel("Conclusions")
    )
  )
)
