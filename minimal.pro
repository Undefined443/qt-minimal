QT          +=  widgets
TEMPLATE    =   app
TARGET      =   minimal
INCLUDEPATH += .

#DEFINES += QT_DISABLE_DEPRECATED_UP_TO=0x060000 # disables all APIs deprecated in Qt 6.0.0 and earlier

# Input
HEADERS += include/mainwindow.h
FORMS   += ui/mainwindow.ui
SOURCES += src/main.cpp \
           src/mainwindow.cpp \
           build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/CMakeFiles/3.30.0/CompilerIdCXX/CMakeCXXCompilerId.cpp \
           build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles/3.30.0/CompilerIdCXX/CMakeCXXCompilerId.cpp
TRANSLATIONS += build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/CMakeFiles/minimal.dir/compiler_depend.ts \
                build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/CMakeFiles/minimal_autogen.dir/compiler_depend.ts \
                build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/CMakeFiles/minimal_autogen_timestamp_deps.dir/compiler_depend.ts \
                build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles/minimal.dir/compiler_depend.ts \
                build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles/minimal_autogen.dir/compiler_depend.ts \
                build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles/minimal_autogen_timestamp_deps.dir/compiler_depend.ts
