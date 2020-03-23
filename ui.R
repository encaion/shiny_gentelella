#### Bar - navigation ####
bar_nav = gentelellaNavbar(
  navbarItems = notif(
    id = "menunotif",
    icon = icon("envelope-o"),
    status = "primary",
    expanded = FALSE,
    lapply(X = 1:5, FUN = function(i) {
      notifItem(
        title = "John Doe",
        date = "3 min ago",
        img = paste0("https://image.flaticon.com/icons/svg/163/16382", i,".svg"),
        "Film festivals used to be do-or-die moments
       for movie makers. They were where..."
      )
    })
  )
)

#### Bar - side ####
bar_side = gentelellaSidebar(
  uiOutput("profile"),
  sidebarDate(),
  sidebarMenu(
    sidebarItem(
      "Tab 1",
      tabName = "tab1", 
      icon = tags$i(class = "fas fa-chart-bar"), 
      badgeName = "new",
      badgeStatus = "danger"
    ),
    sidebarItem(
      "Tab 2",
      tabName = "tab2", 
      icon = tags$i(class = "fas fa-info")
    )
  )
)

#### Body ####
main_body = gentelellaBody(
  tabItems(
    tabItem(tabName = "tab1",
            fluidRow(column(width = 4,
                            align = "center",
                            sliderInput("obs",
                                        "Number of observations:",
                                        min = 0,
                                        max = 1000,
                                        value = 500)),
                     column(width = 8,
                            align = "center",
                            plotOutput("distPlot")))),
    tabItem(tabName = "tab2",
            jumbotron(title = "Hello, world!",
                      "This is a simple hero unit, a simple jumbotron-style
        component for calling extra attention to featured
        content or information."))))

#### footer ####
footer = gentelellaFooter()

#### [[ Main ]] ####
ui = gentelellaPageCustom(
  title = "Shiny Gentelella",
  navbar = bar_nav,
  sidebar = bar_side,
  body = main_body,
  footer = footer
)