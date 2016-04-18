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
      p("Our intent  for  this  app  is to take statistical data and draw conclusions from this data based on 
         visualizations created by the R language. We are using the shiny framework to build the webapp. Each 
         tab should present data  and draw a conclusion about the future outlook of costs and debt of current 
         students."),
      hr(),
      h1("Goals"),
      p("Our goals are to demonstrate our conclusions with data visualizations supported by the R language
        that are simple and easy to understand, while maintaining a smooth and pleasant user interface.")
    )
  )
)

