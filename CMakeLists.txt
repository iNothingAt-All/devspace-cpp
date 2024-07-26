cmake_minimum_required(VERSION 3.29)

project(devspace)

add_executable(main src/main.cpp)

set_target_properties(main PROPERTIES
	CXX_STANDARD 23
	CXX_STANDARD_REQUIRED YES
)

target_compile_options(main PRIVATE 
	-Wall 
	-pedantic
)

target_include_directories(main PRIVATE include)
