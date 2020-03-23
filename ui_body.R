tile_count_row_01 = tileCountRow(
  tileCountUI(id = "tile_01"),
  tileCountElement(value = 2500, change_value = "4%",
                   tile_title = " Total Users", 
                   from_text = " From last Week",
                   going_well = TRUE, 
                   width = 2,
                   icon_in = shiny::icon("won-sign"),
                   highlight = NULL),
  tileCountElement(value = 9900, change_value = "-2%",
                   icon_in = shiny::icon("leaf"),
                   tile_title = " Total Users", 
                   from_text = " From last Month",
                   going_well = FALSE, 
                   width = 2,
                   highlight = NULL),
  tileCountElement(value = 9900, change_value = "-2%",
                   icon_in = shiny::icon("hourglass-end"),
                   tile_title = " Total Users", 
                   from_text = " From last Year",
                   going_well = FALSE, 
                   width = 2,
                   highlight = TRUE)
)

#### Body ####
tab_page_market_price = fluidPage(
  fluidRow(h1("Heading 1"),
           valueBox(value = textOutput(outputId = "crop_01_price"), 
                    title = textOutput(outputId = "crop_01_name"), 
                    description = textOutput(outputId = "crop_01_date"), 
                    width = 2)),
  tile_count_row_01,
  fluidRow(column(width = 4,
                  align = "center",
                  sliderInput("obs",
                              "Number of observations:",
                              min = 0,
                              max = 1000,
                              value = 500)),
           column(width = 8,
                  align = "center",
                  plotOutput("distPlot")))
)

tab_page_2 = jumbotron(title = "Hello, world!",
                       "This is a simple hero unit, a simple jumbotron-style
        component for calling extra attention to featured
        content or information.")

main_body = gentelellaBody(
  tabItems(tabItem(tabName = "tab1",
                   tab_page_market_price),
           tabItem(tabName = "tab2",
                   tab_page_2))
)
