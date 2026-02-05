# load necessary packages
# and source your functions.R file

library(shiny)
library(tidyverse)

source('functions.R')

# this function defines your server logic
server <- function(input, output, session){
  # you will put your interactions here

  # reactiveValue for data
  
  df <- reactiveValues(data = NULL)
  
  observeEvent(input$myfile, {
    df$data <- read.csv(input$myfile$datapath, sep = "\t")
    
    # run our get_choices to collect our list
    my_choices<-get_choices(df$data)
    
    # update our selectInput  choices
    updateSelectInput(
      session,
      "myvar",
      choices = my_choices
    )
  })
  
  output$mydata <- renderTable(
    # we have two inputs: input$myvar selects the variable
    # input$search_str which gives us the character.
    display_table(df$data, input$search_str, input$myvar),
    bordered =TRUE,
    hover = TRUE
  )
  
}
