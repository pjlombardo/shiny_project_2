# Quick Reference

This Shiny App allows you to upload tab-separated data files (like RNA sequence outputs).  It then detects which variables are text-based, and sets up a drop-down to choose one such variable and then provides a text entry to do a quick search and filter of the data sets. 

[Shiny Gallery for Quick Reference](https://shiny.posit.co/r/gallery/)

### Layout description
* Title and description across the top
* Small column with three control inputs:
  1. File-upload (upload a tab-separated file)
  2. drop-down (choose a text-based variable from file upload)
  3. text-entry (enter string to search for)

### Inputs
The bullets below take the general form:

> shiny Component  |  **variable_name** | optional: args

* fileInput | **myfile** | None
* selectInput | **myvar** | choices = TBD
* textInput | **search_str** | None

### Outputs
The bullets below take the general form:

> Shiny Component  |  **variable_name**  | (inputs required)  | optional: function used

* tableOutput | **mydata** | (...) | None

### Reactive components and Server

> component type | **variable_name(s)** | Events that trigger 

* reactiveValues | **df** | input$myfile


### Functions and Set up

> **get_choices**  |  (df)  | This gathers choices for the selectInput based on the uploaded data file.
> **display_table** | (df, search_str, myvar) | This walks through the logic of which dataframe to show based on whether a file was uploaded and whether we entered a search string.

