cmake_minimum_required(VERSION 3.0.0)
project(display_video_w_trackbar VERSION 0.1.0)

include(CTest)
enable_testing()

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(display_video_w_trackbar main.cpp)

target_link_libraries(display_video_w_trackbar ${OpenCV_LIBS})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
