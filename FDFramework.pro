TEMPLATE = subdirs

DESTDIR = ../build/
MAKEFILE = ../build/makefiles/$${TARGET}
OBJECTS_DIR = ../build/obj/$${TARGET}

SUBDIRS += \
    FDCore \
    FDCoreJson \
    FDCorePython \
    FDCore_test \
    FDSerialize \
    FDSerialize_test \
    FDJson \
    FDJson_test \
    FDXml \
    FDXml_test \
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

glad.subdir = ../thirdparty/glad

FDCore.subdir = ../FDCore
FDCore_test.file = ../FDCore/test/FDCore_test.pro
FDCoreJson.file = ../FDCore/FDCoreJson.pro
FDCorePython.file = ../FDCore/FDCorePython.pro
FDSerialize.subdir = ../FDSerialize
FDSerialize_test.file = ../FDSerialize/test/FDSerialize_test.pro
FDJson.subdir = ../FDJson
FDJson_test.file = ../FDJson/test/FDJson_test.pro
FDXml.subdir = ../FDXml
FDXml_test.file = ../FDXml/test/FDXml_test.pro
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

FDCore_test.depends = FDCore
FDCorePython.depends = FDCore
FDCoreJson.depends = FDCore FDSerialize FDJson
FDSerialize.depends = FDCore
FDSerialize_test.depends = FDCore FDSerialize FDJson FDXml
FDJson.depends = FDCore FDSerialize
FDJson_test.depends = FDCore FDSerialize FDJson
FDXml.depends = FDCore FDSerialize
FDXml_test.depends = FDCore FDSerialize FDXml
FD3D.depends = FDCore
FD3D_test.depends = FDCore FD3D
FD3DXml.depends = FDCore FDSerialize FDXml FD3D
FD3DJson.depends = FDCore FDSerialize FDJson FDCoreJson FD3D FDCoreJson
FD3DPython.depends = FD3D
FDGL.depends = FDCore FD3D glad
FDGL_test.depends = FDCore FD3D glad FDGL
FDQUI.depends = FDCore FD3D glad FDGL
FDQUI_test.depends = FDCore FD3D glad FDGL FDQUI
FDPython.depends = FDScript
FDEngine.depends = FDCore FDSerialize glad FDJson FD3DJson FD3D FDGL
FDEngine_test.depends = FDCore FDSerialize FDJson FD3DJson FD3D glad FDGL FDEngine FDScript FDPython FDCorePython FD3DPython
