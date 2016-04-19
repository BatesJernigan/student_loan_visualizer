tabPanel(
  'Employment Information',
  img(src = 'BLS.png', height = 90, width = 175),
  p("All data on this page taken from BLS.gov"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        'unem',
        label = 'Choose unemployment category',
        choices = c('All Masters and Higher Short Term', 'Women Masters and Higher Short Term', 
                    'Men Masters and Higher Short Term', 'Men Bachelors and Higher Long Term',
                    'Women Bachelors and Higher Long Term')
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Unemployment', plotOutput("scatterPlot"), p("Please select a category from the left.")),
        tabPanel('Salaries', p("The following table is Salary information for 2014 on all occupations in the US. Included in this information is Employment percentages, Hourly, and Annual wages."), dataTableOutput('table4')),
        tabPanel('Conclusions', p("The unemployment rates for the last few years for Men and Women with masters degrees and higher has remained at or below the national average. For men and women with Bachelors Degrees, data going all the way costscostback to 1992 suggests that the unemployment rate again has been at or below the national average suggesting that educational degrees are faring well."))
        )
    )
  )
)
