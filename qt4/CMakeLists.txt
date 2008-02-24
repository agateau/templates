find_package(Qt4 REQUIRED)
include_directories(${QT_INCLUDE_DIR})
add_executable(template main.cpp)
target_link_libraries(template ${QT_QTGUI_LIBRARIES} ${QT_QTCORE_LIBRARIES})
