TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDJsonSerialization \
    FDXmlSerialization \

FDJsonSerialization.file = FDJsonSerialization.pro
FDXmlSerialization.file = FDXmlSerialization.pro
