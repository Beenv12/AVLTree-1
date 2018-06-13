cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_STANDARD 11)
project(treenew)


set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
find_package(tree)

add_executable(treenew ${CMAKE_CURRENT_SOURCE_DIR}/treenew.cpp)
target_link_libraries(treenew tree)
install(TARGETS treenew RUNTIME DESTINATION bin)
