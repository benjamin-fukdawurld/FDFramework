TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDQUI \
    FDQUI_test \

FDQUI.subdir = ../FDQUI
FDQUI_test.file = ../FDQUI/test/FDQUI_test.pro

FDQUI_test.depends = FDQUI
