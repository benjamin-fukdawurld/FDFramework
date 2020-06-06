TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FD3D \
    FD3D_test \

FD3D.subdir = ../FD3D
FD3D_test.file = ../FD3D/test/FD3D_test.pro
