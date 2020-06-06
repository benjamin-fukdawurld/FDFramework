TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDEngine \
    FDEngine_test \


FDEngine.subdir = ../FDEngine
FDEngine_test.file = ../FDEngine/test/FDEngine_test.pro

FDEngine_test.depends = FDEngine
