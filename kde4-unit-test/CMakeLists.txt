kde4_add_unit_test(sortfiltermodeltest
    sortfiltermodeltest.cpp
    )

qt4_automoc(sortfiltermodeltest.cpp)

target_link_libraries(sortfiltermodeltest
    corebindingsplugin
    ${KDE4_PLASMA_LIBS}
    ${QT_QTGUI_LIBRARY}
    ${QT_QTTEST_LIBRARY}
    )
