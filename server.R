server = function(input, output, session) {
  output$distPlot = renderPlot({
    hist(rnorm(input$obs))
  })
  
  counter = reactiveValues(connect = 0)
  
  observeEvent(counter$connect == 0, {
    inputSweetAlert(session = session, 
                    inputId = "name",
                    title = "What's your name ?")
  })
  
  output$profile = renderUI({
    sidebarProfile(
      name = input$name,
      img = "https://image.flaticon.com/icons/svg/236/236831.svg"
    )
  })
}