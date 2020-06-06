TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDCoreSystems \
    FDSerializationSystems \
    FDScriptingSystems \
    FDMathSystems \
    FDUISystems \
    FDRenderingSystems \
    FDGameEngineSystems \
    FDScripting \
    FDSerialization \



FDCoreSystems.file = FDCoreSystems.pro
FDMathSystems.file = FDMathSystems.pro
FDSerializationSystems.file = FDSerializationSystems.pro
FDScriptingSystems.file = FDScriptingSystems.pro
FDRenderingSystems.file = FDRenderingSystems.pro
FDUISystems.file = FDUISystems.pro
FDGameEngineSystems.file = FDGameEngineSystems.pro

FDSerialization.file = FDSerialization.pro
FDScripting.file = FDScripting.pro



FDMathSystems.depends = FDCoreSystems
FDSerializationSystems.depends = FDCoreSystems
FDScriptingSystems.depends = FDCoreSystems
FDRenderingSystems.depends = FDCoreSystems FDMathSystems
FDUISystems.depends = FDRenderingSystems

FDSerialization.depends = FDScriptingSystems FDMathSystems
FDScripting.depends = FDScriptingSystems FDMathSystems

FDGameEngineSystems.depends = FDCoreSystems FDMathSystems FDSerialization FDScripting FDRenderingSystems
