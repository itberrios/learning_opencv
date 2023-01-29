cmake_minimum_required(VERSION 3.0.0)
project(image_transformation_simple VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(image_transformation_simple main.cpp)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(image_transformation_simple ${OpenCV_LIBS})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
