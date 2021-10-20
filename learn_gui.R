library(gWidgets)
install.packages('gWidgets2tcltk')
install.packages('gWidgets2')
library(gWidgets2tcltk)
install.packages('lubridate')

library(lubridate)
options(guiToolkit="tcltk")
#переходим в рабочую директорию
setwd("C:/Users/admin/Desktop/GUI_ALBATROSS/R_GUI")

# создаём окно
my_win <- gbasicdialog("My Window",visible  = T, do.buttons=FALSE)

# добавляем кнопку для закрытия окна
gbutton("Cancel", container = my_win,handler = function(h,...) {
  my_win$dispose_window()
})
