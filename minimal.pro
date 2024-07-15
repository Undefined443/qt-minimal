QT          += widgets
TEMPLATE     = app
TARGET       = minimal
INCLUDEPATH += include

DESTDIR      = $$PWD/build
OBJECTS_DIR  = $$PWD/build/obj
MOC_DIR      = $$PWD/build/moc
UI_DIR       = $$PWD/build/ui
RCC_DIR      = $$PWD/build/rcc

SOURCES += src/main.cpp \
           src/mainwindow.cpp

HEADERS += include/mainwindow.h

FORMS   += ui/mainwindow.ui
