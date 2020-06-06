TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDGLRenderingSystems

FDGLRenderingSystems.file = FDGLRenderingSystems.pro
