TEMPLATE = subdirs

SUBDIRS += \
    FDCore \
    FDCore_test \
    FDSerialize \
    FDJson \
    FDJson_test \
    FDXml \
    FDXml_test \
    FD3D \
    FD3D_test \
    glad \
    FDGL \
    FDGL_test \
    FDQUI \
    FDQUI_test

FDCore.subdir = ../FDCore
FDCore_test.file = ../FDCore/test/FDCore_test.pro
FDSerialize.subdir = ../FDSerialize
FDJson.subdir = ../FDJson
FDJson_test.file = ../FDJson/test/FDJson_test.pro
FDXml.subdir = ../FDXml
FDXml_test.file = ../FDXml/test/FDXml_test.pro
FD3D.subdir = ../FD3D
FD3D_test.file = ../FD3D/test/FD3D_test.pro
glad.subdir = ../thirdparty/glad
FDGL.subdir = ../FDGL
FDGL_test.file = ../FDGL/test/FDGL_test.pro
FDQUI.subdir = ../FDQUI
FDQUI_test.file = ../FDQUI/test/FDQUI_test.pro

FDCore_test.depends = FDCore
FDSerialize.depends = FDCore
FDJson.depends = FDCore FDSerialize
FDJson_test.depends = FDCore FDSerialize
FDXml.depends = FDCore FDSerialize
FDXml_test.depends = FDCore FDSerialize FDXml
FD3D.depends = FDCore
FD3D_test.depends = FDCore FD3D
FDGL.depends = FDCore FD3D glad
FDGL_test.depends = FDCore FD3D glad FDGL
FDQUI.depends = FDCore FD3D glad FDGL
FDQUI_test.depends = FDCore FD3D glad FDGL FDQUI
