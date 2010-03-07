find_package(Qt4 REQUIRED)
include_directories(${QT_INCLUDE_DIR})

set(template_SRCS
    main.cpp
    )

qt4_automoc(${template_SRCS})
add_executable(template ${template_SRCS})

cmake_minimum_required(VERSION 2.6)

target_link_libraries(template
    ${QT_QTGUI_LIBRARIES}
    ${QT_QTCORE_LIBRARIES}
    )
