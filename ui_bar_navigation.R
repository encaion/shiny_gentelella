#### Bar - navigation ####
bar_nav_item_noti = notif(
  id = "menunotif",
  icon = icon("envelope-o"),
  status = "primary",
  expanded = FALSE,
  lapply(X = 1:5, FUN = function(i) {
    notifItem(title = "Yelloment",
              date = "3 mins ago",
              img = paste0("https://image.flaticon.com/icons/svg/163/16382", i,".svg"),
              "Sweet Potato!")
  })
)

bar_nav_item_02 = notif(id = "menunotif_02",
                        icon = icon("comment"),
                        status = "info",
                        expanded = FALSE,
                        list(notifItem(title = "title 1",
                                       date = "1 day ago",
                                       "plain text 1"),
                             notifItem(title = "title 2",
                                       date = "2 days ago",
                                       "plain text 2")))


bar_nav_html = HTML(
  '<li>
    <a class="dropdown-toggle info-number" href="http://pandac.co.kr/off/img/PandaC2020.pdf" target="_blank">
      <i class="fa fa-book"></i>
    </a>
  </li>'
)

bar_nav = gentelellaNavbar(
  navbarItems = list(bar_nav_item_noti,
                     bar_nav_item_02,
                     bar_nav_html)
)



# bar_nav_html = HTML(
#   '<li class="dropdown" role="presentation">
#     <a class="dropdown-toggle info-number" href="javascript:;" data-toggle="dropdown" aria-expanded="FALSE">
#       <i class="fa fa-comment"></i>
#     <span class="badge bg-green">100</span>
#   </a>
#   </li>'
# )
