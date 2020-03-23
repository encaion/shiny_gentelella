#### Bar - side ####
bar_side = gentelellaSidebar(
  site_title = span(class = "title-main",
                    h1("AgriPA")),
  uiOutput("profile"),
  sidebarDate(),
  shiny::hr(class = "hr"),
  sidebarMenu(
    sidebarItem("Market Price",
                tabName = "tab1", 
                icon = tags$i(class = "fas fa-chart-bar"), 
                badgeName = "new",
                badgeStatus = "danger"),
    sidebarItem("Data Info",
                tabName = "tab2", 
                icon = tags$i(class = "fas fa-info"))
  )
)
