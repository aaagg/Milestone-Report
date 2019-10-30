#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Coursera Data Science Capstone: Course Project"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("Enter a partial sentence for the next word prediction"),
            textInput("inputString", "Enter a sentence here",value = ""),
            br(),
            br(),
            br(),
            br()
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h2("Predicted Next Word"),
            verbatimTextOutput("prediction"),
            strong("Sentence Input:"),
            tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
            textOutput('text1'),
            br(),
            strong("Note:"),
            tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
            textOutput('text2')
        )
    )
))
