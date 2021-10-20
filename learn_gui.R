library(gWidgets)
install.packages('gWidgets2tcltk')
install.packages('gWidgets2')
library(gWidgets2)

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

#gbutton("Hello world", container = gwindow())
glabel("albatross", container = my_win)
gedit("name", container = my_win)
gradio(c("Go","Python","R"), container=my_win)
gcombobox(c("Go","Python","R"), container=my_win)
gcheckboxgroup(c("Perl","SQL"), container=my_win)
gcalendar(text = as.character(Sys.Date()),container=my_win)
gbutton("Select file", container=my_win, handler =
function(h,...) {gfile(text = "Select file", type = "selectdir")})