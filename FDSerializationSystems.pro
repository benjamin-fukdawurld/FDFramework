TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDSerialize \
    FDSerialize_test \
    FDJson \
    FDJson_test \
    FDXml \
    FDXml_test \

FDSerialize.subdir = ../FDSerialize
FDSerialize_test.file = ../FDSerialize/test/FDSerialize_test.pro
FDJson.subdir = ../FDJson
FDJson_test.file = ../FDJson/test/FDJson_test.pro
FDXml.subdir = ../FDXml
FDXml_test.file = ../FDXml/test/FDXml_test.pro

FDSerialize_test.depends = FDSerialize FDJson FDXml
FDJson.depends = FDSerialize
FDJson_test.depends = FDSerialize FDJson
FDXml.depends = FDSerialize
FDXml_test.depends = FDSerialize FDXml
