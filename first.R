install.packages('tcltk')
install.packages('gWidgets2')
install.packages('gWidgets2tcltk')
install.packages('albatross')
install.packages('RGtk2')
install.packages('Qt')
# создаём окно
gwindow(title = "Window", visible = TRUE, name=title,
 width = NULL, height= NULL, parent=NULL,
 handler = NULL, action = NULL,
 ..., toolkit = guiToolkit())
