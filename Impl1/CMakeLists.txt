project("Impl1" VERSION 1.0.0)

add_library(${PROJECT_NAME} SHARED ${PROJECT_SOURCE_DIR}/Private/Impl1.cpp)

target_compile_definitions(${PROJECT_NAME} PRIVATE INTERFACE_EXPORTS)
target_link_libraries(${PROJECT_NAME} Iface IfaceImpl)

ExportTarget(${PROJECT_NAME})

install(FILES $<TARGET_PDB_FILE:${PROJECT_NAME}> DESTINATION ${CMAKE_INSTALL_BINDIR} OPTIONAL)

