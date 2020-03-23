#### Tab Page - Market Price(main) ####
tile_count_row_01 = tileCountRow(
  tileCountUI(id = "tile_01"),
  tileCountElement(value = 2500, change_value = "4%",
                   tile_title = " Total Users",
                   from_text = " From last Week",
                   going_well = TRUE,
                   width = 6,
                   icon_in = shiny::icon("won-sign"),
                   highlight = NULL),
  tileCountElement(value = 9900, change_value = "-2%",
                   icon_in = shiny::icon("leaf"),
                   tile_title = " Total Users",
                   from_text = " From last Month",
                   going_well = FALSE,
                   width = 6,
                   highlight = NULL)
)

tile_count_row_02 = tileCountRow(
  tileCountUI(id = "tile_02"),
  tileCountElement(value = 2500, change_value = "4%",
                   tile_title = " Total Users",
                   from_text = " From last Week",
                   going_well = TRUE,
                   width = 6,
                   icon_in = shiny::icon("won-sign"),
                   highlight = NULL),
  tileCountElement(value = 9900, change_value = "-2%",
                   icon_in = shiny::icon("leaf"),
                   tile_title = " Total Users",
                   from_text = " From last Month",
                   going_well = FALSE,
                   width = 6,
                   highlight = NULL)
)
tile_count_row_03 = tileCountRow(
  tileCountUI(id = "tile_03"),
  tileCountElement(value = 2500, change_value = "4%",
                   tile_title = " Total Users",
                   from_text = " From last Week",
                   going_well = TRUE,
                   width = 6,
                   icon_in = shiny::icon("won-sign"),
                   highlight = NULL),
  tileCountElement(value = 9900, change_value = "-2%",
                   icon_in = shiny::icon("leaf"),
                   tile_title = " Total Users",
                   from_text = " From last Month",
                   going_well = FALSE,
                   width = 6,
                   highlight = NULL)
)



tab_page_market_price = fluidPage(
  fluidRow(h2("Garak Market - Wholesale")),
  fluidRow(column(width = 4, tile_count_row_01),
           column(width = 4, tile_count_row_02),
           column(width = 4, tile_count_row_03)),
  fluidRow(h2("Potato")),
  fluidRow(valueBox(value = textOutput(outputId = "crop_01_price"),
                    title = textOutput(outputId = "crop_01_name"),
                    description = textOutput(outputId = "crop_01_date"),
                    width = 2))
)

#### Tab Page - News ####

tab_page_news = fluidPage(
  fluidRow("asdf"),
  fluidRow(jumbotron(title = "Hello, world!",
                     "This is a simple hero unit, a simple jumbotron-style
        component for calling extra attention to featured
        content or information."))
)

#### Tab Page - Data Info ####
tab_page_data_info = fluidPage(
  tagList(
    dashboard_box("asdf", box_title = "Targets"),
    dashboard_box("asdfasdf", box_title = "Flexdashbo", menuItems = NULL),
    dashboard_box(p("More interesting stuff"))
  ),
  "asdf"
)

#### [[ tab body ]] ####
main_body = gentelellaBody(
  tabItems(tabItem(tabName = "marketprice",
                   tab_page_market_price),
           tabItem(tabName = "news",
                   tab_page_news),
           tabItem(tabName = "dataref",
                   tab_page_data_info))
)