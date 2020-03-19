cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Woverloaded-virtual")

find_package(Qt5 CONFIG REQUIRED Core)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/..)

add_executable(inlog inlog.cpp)
target_link_libraries(inlog Qt5::Core)

add_executable(qtjsonvars qtjsonvars.cpp)
target_link_libraries(qtjsonvars Qt5::Core)

add_executable(mtracer mtracer.cpp)
