TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    glad \
    FDGL \
    FDGL_test \

glad.subdir = ../thirdparty/glad

FDGL.subdir = ../FDGL
FDGL_test.file = ../FDGL/test/FDGL_test.pro

FDGL.depends = glad
FDGL_test.depends = FDGL
