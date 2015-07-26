library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Roll Some Dice!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("diceSides",
                  "Number of Sides on the dice:",
                  min = 2,
                  max = 25,
                  value = 6),
      sliderInput("numDice",
                  "Number dice to roll:",
                  min = 1,
                  max = 50,
                  value = 2),
      sliderInput("numRolls",
                  "Number of Rolls:",
                  min = 100,
                  max = 5000,
                  value = 1000),
      sliderInput("numBins",
                  "Number of bins on the Histrogram:",
                  min = 5,
                  max = 25,
                  value = 10)
    
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h2("Rolling Dice"),
      h3("With this shiny app you can simulate rolling dice in a number
          of different congifurations and see the resulting distribution
          of average rolls. Simply adjust the sliders to the left and see how the
          distribution changes"),      
      plotOutput("distPlot")
    )
  )
))