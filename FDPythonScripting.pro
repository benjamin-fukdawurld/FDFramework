TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDCorePython \
    FD3DPython \

FDCorePython.file = ../FDCore/FDCorePython.pro
FD3DPython.file = ../FD3D/FD3DPython.pro


