TEMPLATE  = subdirs
CONFIG   += ordered
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x050F00

SUBDIRS = \
    src \
    examples \
#    tests

win32 {
LIBS += -L$$PWD/../../../../../mingw/lib/ -lbotan-2

INCLUDEPATH += $$PWD/../../../../../mingw/include/botan-2/
DEPENDPATH += $$PWD/../../../../../mingw/include/botan-2/
}

unix {
        LIBS += -L. -lbotan-2
}
