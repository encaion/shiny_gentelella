source("ui_bar_navigation.R")
source("ui_bar_side.R")
source("ui_body.R")
source("ui_footer.R")

#### [[ Main ]] ####
ui = gentelellaPageCustom(
  tags$head(
    tags$link(rel = "stylesheet", href = "my_css.css")
  ),
  navbar = bar_nav,
  sidebar = bar_side,
  sidebar_collapsed = FALSE,
  body = main_body,
  footer = footer
)
