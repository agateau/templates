cmake_minimum_required(VERSION 2.8)

# Dependencies
find_package(Qt4 REQUIRED)

# Sources
set(template_SRCS
    main.cpp
    )

# Building
include_directories(
    ${QT_INCLUDE_DIR}
    ${QT_QTCORE_INCLUDE_DIR}
    ${QT_QTGUI_INCLUDE_DIR}
    )

qt4_automoc(${template_SRCS})
add_executable(template ${template_SRCS})

target_link_libraries(template
    ${QT_QTGUI_LIBRARIES}
    ${QT_QTCORE_LIBRARIES}
    )

# Install
install(TARGETS template
    RUNTIME DESTINATION bin
    )
