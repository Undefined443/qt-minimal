cmake_minimum_required(VERSION 3.5)

project(minimal VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC_SEARCH_PATHS ui) # 将 ui 目录添加到 uic 查找目录

find_package(Qt6 COMPONENTS Widgets REQUIRED)

set(PROJECT_SOURCES
    src/main.cpp
    src/mainwindow.cpp
    include/mainwindow.h
    ui/mainwindow.ui)

qt_add_executable(minimal MANUAL_FINALIZATION ${PROJECT_SOURCES})

target_include_directories(minimal PRIVATE include)
target_link_libraries(minimal PRIVATE Qt${QT_VERSION_MAJOR}::Widgets)

set_target_properties(minimal
    PROPERTIES ${BUNDLE_ID_OPTION} 
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE)

include(GNUInstallDirs)

install(TARGETS minimal
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

qt_finalize_executable(minimal)
