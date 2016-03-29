tabPanel(
  'Student Debt by State',
  img(src = 'logo.png', height = 72, width = 250),
  h6('All data on this page was taken from College-insight.org.'),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        'Year',
        label = 'Choose a year',
        choices = c('2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013')
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Plot', plotOutput('histPlot1')),
        tabPanel('Data Table', dataTableOutput('table1')),
        tabPanel('Summary Statistics', tableOutput('table2'))
      )
    )
  )
)

