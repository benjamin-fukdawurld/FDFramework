TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDScript \
    FDPython \

FDScript.subdir = ../FDScript
FDPython.subdir = ../FDPython

FDPython.depends = FDScript

