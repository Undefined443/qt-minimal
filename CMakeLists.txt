# 设置 CMake 最低版本
cmake_minimum_required(VERSION 3.10)

# 设置项目名称、版本、语言
project(minimal VERSION 0.1 LANGUAGES CXX)

# 启用自动生成 UI、MOC、RCC 文件
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 启用当前目录包含
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# 将 ui 目录添加到 uic 查找目录
set(CMAKE_AUTOUIC_SEARCH_PATHS ui)

# 查找 Qt6 组件
find_package(Qt6 COMPONENTS Widgets REQUIRED)

# 设置项目源文件
set(PROJECT_SOURCES
    src/main.cpp
    src/mainwindow.cpp
    include/mainwindow.h
    ui/mainwindow.ui)

# 添加可执行文件
qt_add_executable(minimal MANUAL_FINALIZATION ${PROJECT_SOURCES})

# 添加私有包含目录
target_include_directories(minimal PRIVATE include)
# 添加链接库
target_link_libraries(minimal PRIVATE Qt6::Widgets)

# 设置 macOS 包属性
set_target_properties(minimal
    PROPERTIES ${BUNDLE_ID_OPTION} 
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE)

# 安装目标
include(GNUInstallDirs)

# 安装目标
install(TARGETS minimal
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

# 最终化可执行文件
qt_finalize_executable(minimal)
