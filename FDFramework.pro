TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDCore \
    FDCoreJson \
    FDCorePython \
    FDCore_test \
    FD3D \
    FD3DXml \
    FD3DJson \
    FD3DPython \
    FD3D_test \
    glad \
    FDGL \
    FDGL_test \
    FDQUI \
    FDQUI_test \
    FDScript \
    FDPython \
    FDEngine \
    FDEngine_test \
    FDSerialization \

glad.subdir = ../thirdparty/glad

FDCore.subdir = ../FDCore
FDCore_test.file = ../FDCore/test/FDCore_test.pro
FDCoreJson.file = ../FDCore/FDCoreJson.pro
FDCorePython.file = ../FDCore/FDCorePython.pro
FD3D.subdir = ../FD3D
FD3D_test.file = ../FD3D/test/FD3D_test.pro
FD3DXml.file = ../FD3D/FD3DXml.pro
FD3DJson.file = ../FD3D/FD3DJson.pro
FD3DPython.file = ../FD3D/FD3DPython.pro
FDGL.subdir = ../FDGL
FDGL_test.file = ../FDGL/test/FDGL_test.pro
FDQUI.subdir = ../FDQUI
FDQUI_test.file = ../FDQUI/test/FDQUI_test.pro
FDScript.subdir = ../FDScript
FDPython.subdir = ../FDPython
FDEngine.subdir = ../FDEngine
FDEngine_test.file = ../FDEngine/test/FDEngine_test.pro

FDSerialization.subdir = ../FDSerialization

FDCore_test.depends = FDCore
FDCorePython.depends = FDCore
FDCoreJson.depends = FDCore FDSerialization
FD3D.depends = FDCore
FD3D_test.depends = FDCore FD3D
FD3DXml.depends = FDCore FDSerialization FD3D
FD3DJson.depends = FDCore FDSerialization FDCoreJson FD3D FDCoreJson
FD3DPython.depends = FD3D
FDGL.depends = FDCore FD3D glad
FDGL_test.depends = FDCore FD3D glad FDGL
FDQUI.depends = FDCore FD3D glad FDGL
FDQUI_test.depends = FDCore FD3D glad FDGL FDQUI
FDPython.depends = FDScript
FDEngine.depends = FDCore FDSerialization glad FD3DJson FD3D FDGL
FDEngine_test.depends = FDCore FDSerialization FD3DJson FD3D glad FDGL FDEngine FDScript FDPython FDCorePython FD3DPython
