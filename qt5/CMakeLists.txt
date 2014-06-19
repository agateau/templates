cmake_minimum_required(VERSION 2.8)

# Dependencies
find_package(Qt5 CONFIG REQUIRED Core)

# Sources
set(template_SRCS
    main.cpp
    )

# Building
include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}
    )

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Woverloaded-virtual -std=c++11")
add_executable(template ${template_SRCS})

target_link_libraries(template Qt5::Core)

# Install
install(TARGETS template
    DESTINATION bin
    )
