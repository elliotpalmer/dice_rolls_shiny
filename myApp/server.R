library(shiny)

shinyServer(function(input, output) {
  

  output$distPlot <- renderPlot({
    
    diceSides <- input$diceSides
    numDice <- input$numDice
    numRolls <- input$numRolls
    
    rolls <- 1:numRolls
    
    for (i in 1:numRolls){       
      values <-  sample(1:diceSides,numDice, replace = T)
      rolls[i] <- mean(values)
    }
    
    meanRolls <- mean(rolls)
    
    bins <- seq(min(rolls), max(rolls), length.out = input$numBins + 1)
    
    hist(rolls, breaks = bins, col = 'darkgray', border = 'white')
    abline(v= meanRolls, col = "red")
    
  })
})