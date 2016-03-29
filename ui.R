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
    source('introduction.r', local=TRUE)$value,
    source('national_student_debt.R', local=TRUE)$value,
    source('student_debt_by_state.R', local=TRUE)$value,
    source('debt_by_education_level.R', local=TRUE)$value,
    source('employment_information.R', local=TRUE)$value,
    navbarMenu("More", source('conclusions.R', local=TRUE)$value)
  )
)
