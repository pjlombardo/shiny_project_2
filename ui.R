# Build your UI page here


ui <- fluidPage(
  # Fill in your details here
  h1("Tab-separated File Viewer"),
  h3("Searchable strings for categorical variables"),
  p("This Shiny App allows you to upload tab-separated data files (like RNA sequence outputs).  It then detects which variables are text-based, and sets up a drop-down to choose one such variable and then provides a text entry to do a quick search and filter of the data sets."),
  
  br(),
  column(4,
         inputPanel(
           fileInput("myfile","Please upload a tab-separated file."),
           selectInput("myvar",
                       "Please select a variable on which to filter:",
                       choices = list("Choice 1" = "choice1",
                                      "Choice 2" = "choice2")),
           textInput("search_str",
                     "Enter a string by which to filter the data:",
                     placeholder = "...")
         )
  ),
  
  column(8,
    tableOutput("mydata")
  )
  
  
  
)