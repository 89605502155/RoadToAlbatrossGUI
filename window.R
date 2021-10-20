# создаём окно
my_win <- gbasicdialog("My Window",visible  = T, do.buttons=FALSE)

# добавляем кнопку для закрытия окна
gbutton("Cancel", container = my_win,handler = function(h,...) {
  my_win$dispose_window()
})