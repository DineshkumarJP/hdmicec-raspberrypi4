cmake_minimum_required(VERSION 2.6)

project(HDMICEC_HAL)

set(CMAKE_BUILD_TYPE "Debug")

include_directories(${CMAKE_SOURCE_DIR})
include_directories(${STAGING_INCDIR})

set (HDMICEC_HAL_SOURCES ${CMAKE_SOURCE_DIR}/hdmi_cec_driver.c)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-attributes -Wall -Wextra -fpermissive")

add_library(RCECHal SHARED ${HDMICEC_HAL_SOURCES})
install(TARGETS RCECHal DESTINATION lib)
