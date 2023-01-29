cmake_minimum_required(VERSION 3.0.0)
project(<PROJECT_NAME_HERE> VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(<PROJECT_NAME_HERE> main.cpp)

# needed to find and link opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(<PROJECT_NAME_HERE> ${OpenCV_LIBS})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
