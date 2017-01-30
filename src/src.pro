QT       += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ict
TEMPLATE = app

macx {
    # mac only
}
unix:!macx{
    # linux only
    QMAKE_CXX= color_compile ccache g++
}
win32 {
    # windows only
    QMAKE_CXXFLAGS += -march=i686
}

SOURCES += main.cpp\
    mainwindow.cpp\
	serialworker.cpp \
    xcanframe.cpp \
    xframe.cpp

HEADERS  += mainwindow.h\
	serialworker.h \
    xcanframe.h \
    xframe.h

FORMS    += mainwindow.ui

#DESTDIR += ../output/

INCLUDEPATH += ../lib/utils ../3rdparty/libQtDbc/inc

top_srcdir = $$PWD
top_builddir = $$shadowed($$PWD)

LIBS+= -L$$top_srcdir/../3rdparty -lQtDbc
