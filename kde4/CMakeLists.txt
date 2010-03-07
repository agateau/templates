project(testknotify)

find_package(KDE4 REQUIRED)
include (KDE4Defaults)

set(SRCS
	main.cpp
	)

kde4_add_executable(testknotify ${SRCS})

target_link_libraries(testknotify
	${KDE4_KFILE_LIBS}
	${KDE4_KIO_LIBS}
	${QT_QTCORE_LIBRARY}
	)

#target_link_libraries(testknotify LINK_INTERFACE_LIBRARIES ${KDE4_KIO_LIBS} ${QT_QTCORE_LIBRARY})

install(TARGETS testknotify
	${INSTALL_TARGETS_DEFAULT_ARGS})

install(FILES testknotifyui.rc
	DESTINATION ${DATA_INSTALL_DIR}/testknotify)

install(FILES testknotify.notifyrc
	DESTINATION ${DATA_INSTALL_DIR}/testknotifyrc)
