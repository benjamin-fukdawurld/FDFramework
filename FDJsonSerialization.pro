TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDCoreJson \
    FD3DJson \

FDCoreJson.file = ../FDCore/FDCoreJson.pro
FD3DJson.file = ../FD3D/FD3DJson.pro
