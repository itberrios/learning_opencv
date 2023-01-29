cmake_minimum_required(VERSION 3.0.0)
project(writing_to_a_file VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(writing_to_a_file main.cpp)

# needed to find and link opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(writing_to_a_file ${OpenCV_LIBS})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
