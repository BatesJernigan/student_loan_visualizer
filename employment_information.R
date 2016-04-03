tabPanel(
  'Employment Information',
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
        tabPanel('Unemployment', plotOutput("scatterPlot")),
        tabPanel('Salaries'),
        tabPanel('Conclusions')
        )
    )
  )
)
