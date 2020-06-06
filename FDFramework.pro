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

#FDCorePython.depends = FDCore
#FDCoreJson.depends = FDCore FDSerializationSystems
#FD3D.depends = FDCore
#FD3D_test.depends = FDCore FD3D
#FD3DXml.depends = FDCore FDSerializationSystems FD3D
#FD3DJson.depends = FDCore FDSerializationSystems FDCoreJson FD3D FDCoreJson
#FD3DPython.depends = FD3D
#FDGL.depends = FDCore FD3D glad
#FDGL_test.depends = FDCore FD3D glad FDGL
#FDQUI.depends = FDCore FD3D glad FDGL
#FDQUI_test.depends = FDCore FD3D glad FDGL FDQUI
#FDEngine.depends = FDCore FDSerializationSystems glad FD3DJson FD3D FDGL
#FDEngine_test.depends = FDCore FDSerializationSystems FD3DJson FD3D glad FDGL FDEngine FDScripting FDCorePython FD3DPython
