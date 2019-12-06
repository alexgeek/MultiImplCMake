cmake_minimum_required (VERSION 3.8)

project("MultiImpl" VERSION 1.0.0)

add_executable (MultiImpl "MultiImpl.cpp" "MultiImpl.h")

target_link_libraries(${PROJECT_NAME} PUBLIC Impl2)

ExportTarget(${PROJECT_NAME})

install(FILES $<TARGET_PDB_FILE:${PROJECT_NAME}> DESTINATION ${CMAKE_INSTALL_BINDIR} OPTIONAL)
