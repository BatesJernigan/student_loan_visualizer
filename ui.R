library(shinysky)
library(shiny)
library(maps)
library(mapproj)

# Define UI for application that draws a histogram
shinyUI(
  navbarPage(
    "Student Loan Data",
    source('introduction.r', local=TRUE)$value,
    source('student_debt_by_state.R', local=TRUE)$value,
    source('national_and_state_costs.R', local=TRUE)$value,
    source('employment_information.R', local=TRUE)$value,
    source('conclusions.R', local=TRUE)$value
  )
)
