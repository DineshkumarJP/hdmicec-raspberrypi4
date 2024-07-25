# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name and version
project(MyLibrary VERSION 1.0)

# Set the library name
set(LIBRARY_NAME mylibrary)

# Specify the source files
set(SOURCES hdmi_cec_driver.c)

# Specify the header files (optional but good practice)
set(HEADERS hdmi_cec_driver.h)

# Create the shared library
add_library(${LIBRARY_NAME} SHARED ${SOURCES})

# Include directories (where to find the header files)
target_include_directories(${LIBRARY_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

