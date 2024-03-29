include(GNUInstallDirs)

function(ExportTarget TARGET_TO_EXPORT)
	install(TARGETS ${TARGET_TO_EXPORT}
		EXPORT ${TARGET_TO_EXPORT}_Targets
		ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
		LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
		RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
	)

	include(CMakePackageConfigHelpers)
	write_basic_package_version_file("${TARGET_TO_EXPORT}ConfigVersion.cmake"
		VERSION ${PROJECT_VERSION}
		COMPATIBILITY SameMajorVersion
	)

	configure_package_config_file(
		"${PROJECT_SOURCE_DIR}/cmake/${TARGET_TO_EXPORT}Config.cmake.in"
		"${PROJECT_BINARY_DIR}/${TARGET_TO_EXPORT}Config.cmake"
		INSTALL_DESTINATION
		${CMAKE_INSTALL_DATAROOTDIR}/${TARGET_TO_EXPORT}/cmake)

	install(EXPORT ${TARGET_TO_EXPORT}_Targets
		FILE ${TARGET_TO_EXPORT}Targets.cmake
		NAMESPACE ${TARGET_TO_EXPORT}::
		DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/${TARGET_TO_EXPORT}/cmake
	)

	install(FILES "${PROJECT_BINARY_DIR}/${TARGET_TO_EXPORT}Config.cmake"
		"${PROJECT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
		DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/${TARGET_TO_EXPORT}/cmake
	)
endfunction()