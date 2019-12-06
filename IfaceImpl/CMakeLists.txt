project("IfaceImpl" VERSION 1.0.0)

add_library(${PROJECT_NAME} INTERFACE)

target_sources(${PROJECT_NAME} 
	INTERFACE $<BUILD_INTERFACE:${${PROJECT_NAME}_SOURCE_DIR}/Public>/InterfaceImpl.cpp
)

target_compile_definitions(${PROJECT_NAME}
	INTERFACE INTERFACE_EXPORTS
)

ExportTarget(${PROJECT_NAME})