add_definitions(-DTRANSLATION_DOMAIN=\"plasma_runner_placesrunner\")

set(krunner_placesrunner_SRCS
    placesrunner.cpp
)

add_library(krunner_placesrunner MODULE ${krunner_placesrunner_SRCS})

target_link_libraries(krunner_placesrunner
    KF5::KIOCore
    KF5::KIOWidgets
    KF5::KIOFileWidgets
    KF5::I18n
    KF5::Runner
)

install(TARGETS krunner_placesrunner DESTINATION ${KDE_INSTALL_PLUGINDIR} )

install(FILES plasma-runner-places.desktop DESTINATION ${KDE_INSTALL_KSERVICES5DIR})

