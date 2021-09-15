# Install script for directory: C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/out/install/windows-default")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/out/build/windows-default/lbp.lib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xappx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/out/build/windows-default/lbp.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/package_lbp" TYPE FILE FILES
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/LBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/bglbp/BGLBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/cslbp/CSLBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/csldp/CSLDP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/cssiltp/CSSILTP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/elbp/ELBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/oclbp/OCLBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/olbp/OLBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/scslbp/SCSLBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/siltp/SILTP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/varlbp/VARLBP.h"
    "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/package_lbp/xcslbp/XCSLBP.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xappx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/out/build/windows-default/lbp.exe")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/Vassilis/Documents/Visual Studio Projects/lbplibrary/out/build/windows-default/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
