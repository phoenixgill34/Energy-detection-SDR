# Install script for directory: /home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/energy_detection" TYPE FILE FILES "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/cmake/Modules/energy_detectionConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/include/energy_detection/cmake_install.cmake")
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/lib/cmake_install.cmake")
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/swig/cmake_install.cmake")
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/python/cmake_install.cmake")
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/grc/cmake_install.cmake")
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/apps/cmake_install.cmake")
  include("/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/docs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
