Archivos base


cmake_minimum_required(VERSION 3.29)
project(main)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pedantic")

add_executable(main src/main.cpp)
target_include_directories(main PRIVATE include)
