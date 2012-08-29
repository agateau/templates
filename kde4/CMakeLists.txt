project(kde4app)

find_package(KDE4 REQUIRED)
include(KDE4Defaults)

add_definitions(
    ${QT_DEFINITIONS}
    ${KDE4_DEFINITIONS}
    )

include_directories(
    ${KDE4_INCLUDES}
    )

set(SRCS
	main.cpp
	)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Woverloaded-virtual")
kde4_add_executable(kde4app ${SRCS})

target_link_libraries(kde4app
	${KDE4_KFILE_LIBS}
	${KDE4_KIO_LIBS}
	${QT_QTCORE_LIBRARY}
	)

install(TARGETS kde4app
	${INSTALL_TARGETS_DEFAULT_ARGS})

install(FILES kde4appui.rc
	DESTINATION ${DATA_INSTALL_DIR}/kde4app)
