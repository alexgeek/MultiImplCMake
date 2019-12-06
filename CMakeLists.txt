cmake_minimum_required(VERSION 3.12)

project ("MultiImpl")

# Include sub-projects.
add_subdirectory ("Iface")
add_subdirectory ("IfaceImpl")
add_subdirectory ("Impl1")
add_subdirectory ("Impl2")
add_subdirectory ("MultiImpl")
