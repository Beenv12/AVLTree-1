cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_STANDARD 11)

project(tree)

find_package(tree-0.1.0.0-Darwin.tar.gz)

add_executable(demo ${CMAKE_CURRENT_SOURCE_DIR}/sources/demo.cpp)
target_link_libraries(demo print)

install(TARGETS demo RUNTIME DESTINATION bin)