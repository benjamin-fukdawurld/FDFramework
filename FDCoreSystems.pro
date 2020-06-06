TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDCore \
    FDCore_test \
    
FDCore.subdir = ../FDCore
FDCore_test.file = ../FDCore/test/FDCore_test.pro
    
FDCore_test.depends = FDCore
