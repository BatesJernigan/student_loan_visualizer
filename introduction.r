tabPanel('Intro',
  sidebarLayout(
    sidebarPanel(
      h3("Our Team"),
      hr(),
      tags$ul(br("Bates Jernigan"), br("Christopher McNutt"), br("Phillip Nguyen"), br("Parker Copeland"),
        br("Bryan MacDonald"), br("Clifton Taylor"))
    ),
    mainPanel(
      h1("Intent"),
      hr(),
      p("The  goal  of  this  app is to give basic  details about the employment situation
        for computer  programmers  for the nation, by  state, and for each county in North
        Carolina.  Our  information  is  taken straight  from BLS.GOV, the Bureau of Labor
        and Statistics, and presented using built in R  functions to represent statistical
        analysis."),
      hr(),
      h1("Goals"),
      p("Our goals are to accurately represent the current job outlook for CS students who
        plan  to  identify  as  'Computer Programmers' who are entering the workforce upon
        graduation.  We decided to use R for it's data analysis features for this task. We
        also  chose  to  utilize  the  shiny  package  for R in order to develop a web app 
        because  it is  a good example of the simplicity that R offers to its users, while 
        providing powerful analytical support.")
    )
  )
)
