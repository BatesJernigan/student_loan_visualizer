tabPanel(
  'National and State Costs of Attendance',
  img(src = 'logo.png', height = 72, width = 250),
  h6('All data on this page was taken from College-insight.org.'),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        'category',
        label = 'Choose a category',
        choices = c('National', 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware',
                    'District of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas',
                    'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri',
                    'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 
                    'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota',
                    'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Winsconsin', 'Wyoming')
      ),
      selectInput(
        'Year1',
        label = 'Choose a year',
        choices = c('2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013')
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Plot', plotOutput('pieChart'), p("Choose a state (or National) to view a pie chart comparing total cost percentages."), plotOutput("boxPlot"), p("Choose a year to view a boxplot of the average cost for that year.")),
        tabPanel('Data Table', dataTableOutput('table3')),
        tabPanel('Conclusions', p("Based on the data presented by this data set, we can see that costs of
                                  attendance of schools at the state and national averages have rose roughly
                                  $10,000 dollars since 2003, which cooresponds to an almost identical increase
                                  in student indebtedness. This suggests that the increasing indebtedness is not
                                  due to a students trending to prefer taking on loans themselves, but that the
                                  rising costs of education are forcing them into debt."))
      )
    )
  )
)