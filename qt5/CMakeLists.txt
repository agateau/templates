cmake_minimum_required(VERSION 3.10)
project(template
    VERSION 0.1.0
    DESCRIPTION "Fancy app"
)

# Dependencies
find_package(Qt5 CONFIG REQUIRED Core Widgets)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

# Sources
set(template_SRCS
    main.cpp
    window.cpp
    )

# Building
include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}
    )

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Woverloaded-virtual")
set(CMAKE_CXX_STANDARD 17)
add_executable(template ${template_SRCS})

target_link_libraries(template Qt5::Core Qt5::Widgets)

# Install
install(TARGETS template
    DESTINATION bin
    )
