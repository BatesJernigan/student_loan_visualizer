tabPanel(
  'Pell Grants',
  sidebarLayout(
    sidebarPanel(
      selectInput(
        'major',
        label = 'Choose a State',
        choices = c('National', 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut',
                    'Delaware', 'District of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana',
                    'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan',
                    'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
                    'New Jersey', 'New Mexico', 'New York', 'North Carolina',  'North Dakota', 'Ohio', 'Oklahoma',
                    'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas',
                    'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Winsconsin', 'Wyoming')
      ),
      selectInput(
        'pellGrantYear',
        label = 'Choose a year',
        choices = c('1999-2000','2000-2001', '2001-2002', '2002-2003', '2003-2004', '2004-2005', '2005-2006',
                    '2006-2007', '2007-2008', '2008-2009', '2009-2010', '2010-2011', '2011-2012', '2012-2013')
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Data Table', dataTableOutput('pellGrantStateDebtHistPlot')),
        tabPanel('Conclusions', hr(), p("Based on the data presented by this data set, we can see that costs of
                                  attendance of schools at the state and national averages have rose roughly
                                  $10,000 dollars since 2003, which cooresponds to an almost identical increase
                                  in student indebtness. This suggests that the increasing indebtness is not
                                  due to a students trending to prefer taking on loans themselves, but that the
                                  rising costs of education are forcing them into debt."))
      )
    )
  )
)
