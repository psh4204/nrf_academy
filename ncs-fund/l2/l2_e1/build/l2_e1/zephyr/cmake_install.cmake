# Install script for directory: C:/ncs/v3.0.2/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/ncs/toolchains/0b393f9e1b/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/suit-processor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/lz4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/zscilib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/hal_tdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/nrf_wifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/__WORKSPACE__/_nrf_/ncs-fund/l2/l2_e1/build/l2_e1/zephyr/cmake/reports/cmake_install.cmake")
endif()

