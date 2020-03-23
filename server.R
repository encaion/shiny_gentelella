server = function(input, output, session) {
  
  counter = reactiveValues(connect = 0)
  
  # observeEvent(counter$connect == 0, {
  #   inputSweetAlert(session = session, 
  #                   inputId = "name",
  #                   title = "What's your name?")
  # })
  
  output$distPlot = renderPlot({
    hist(rnorm(input$obs))
  })
  
  output$profile = renderUI({
    sidebarProfile(
      # name = input$name,
      name = "Farmer",
      img = "/img/profile_default.svg"
    )
  })
  
  output$crop_01_price = renderText({
    23.566
  })
  output$crop_01_name = renderText({
    23.566
  })
  output$crop_01_date = renderText({
    paste0(as.character(Sys.Date()), " standard")
  })
}