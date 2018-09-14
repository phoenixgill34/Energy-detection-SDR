# Install script for directory: /home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/python

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/energy_detection" TYPE FILE FILES
    "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/python/__init__.py"
    "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/python/snr_estimator.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/energy_detection" TYPE FILE FILES
    "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/python/__init__.pyc"
    "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/python/snr_estimator.pyc"
    "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/python/__init__.pyo"
    "/home/gill/Desktop/gnuradio/flowgraphs/gr-energy_detection/build/python/snr_estimator.pyo"
    )
endif()

