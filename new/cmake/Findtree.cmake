find_library(MY_LIB NAMES tree PATHS /pack)
if(NOT MY_LIB)
  message(ERROR "MyLib has not been found")
else()
  message(STATUS "Found MyLib: " ${MY_LIB})
endif()
