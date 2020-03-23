#### Bar - side ####
bar_side = gentelellaSidebar(
  site_title = span(class = "title-main",
                    h1("AgriPA")),
  url = "/",
  uiOutput("profile"),
  div(id = "sidebar-menu", 
      class = "main_menu_side hidden-print main_menu"),
  shiny::hr(class = "hr"),
  sidebarMenu(title = "",
    sidebarItem("Market Price",
                tabName = "marketprice",
                icon = tags$i(class = "fas fa-chart-bar")),
    sidebarItem("News",
                tabName = "news",
                icon = tags$i(class = "fas fa-tasks")),
    sidebarItem("Data Info",
                tabName = "dataref",
                icon = tags$i(class = "fas fa-tags"))
  ),
  footer = HTML('')
)
