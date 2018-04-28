# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "OFF")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_IFW "OFF")
SET(CPACK_BINARY_NSIS "OFF")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_RPM "OFF")
SET(CPACK_BINARY_STGZ "ON")
SET(CPACK_BINARY_TBZ2 "OFF")
SET(CPACK_BINARY_TGZ "ON")
SET(CPACK_BINARY_TXZ "OFF")
SET(CPACK_BINARY_TZ "ON")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
SET(CPACK_COMPONENTS_ALL "")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "STGZ;TGZ;TZ")
SET(CPACK_INSTALL_CMAKE_PROJECTS "/home/levnon/Downloads/DMS;DMS;ALL;/")
SET(CPACK_INSTALL_PREFIX "/usr/local/DMS")
SET(CPACK_MODULE_PATH "/home/levnon/Downloads/DMS/cmake;/home/levnon/Downloads/DMS/cmake/Platform")
SET(CPACK_NSIS_DISPLAY_NAME "DMS 5.0")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "DMS 5.0")
SET(CPACK_OUTPUT_CONFIG_FILE "/home/levnon/Downloads/DMS/CPackConfig.cmake")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-3.5/Templates/CPack.GenericDescription.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "DMS - a multiscale simulator for high-performance molecular simulation")
SET(CPACK_PACKAGE_FILE_NAME "DMS-5.0-Linux")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "DMS 5.0")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "DMS 5.0")
SET(CPACK_PACKAGE_NAME "DMS")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "gromacs.org")
SET(CPACK_PACKAGE_VERSION "5.0")
SET(CPACK_PACKAGE_VERSION_MAJOR "5")
SET(CPACK_PACKAGE_VERSION_MINOR "0")
SET(CPACK_PACKAGE_VERSION_PATCH "1")
SET(CPACK_PROJECT_CONFIG_FILE "/home/levnon/Downloads/DMS/CPackInit.cmake")
SET(CPACK_RESOURCE_FILE_LICENSE "/home/levnon/Downloads/DMS/COPYING")
SET(CPACK_RESOURCE_FILE_README "/home/levnon/Downloads/DMS/admin/InstallInfo.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "/home/levnon/Downloads/DMS/admin/InstallWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
SET(CPACK_SOURCE_IGNORE_FILES "\\.isreposource$;\\.git/;\\.gitignore$")
SET(CPACK_SOURCE_INSTALLED_DIRECTORIES "/home/levnon/Downloads/DMS;/;/home/levnon/Downloads/DMS/src/programs/completion;src/programs/completion;/home/levnon/Downloads/DMS/share/man/man1;share/man/man1;/home/levnon/Downloads/DMS/share/man/man7;share/man/man7;/home/levnon/Downloads/DMS/share/html/final;share/html/final")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/levnon/Downloads/DMS/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_TBZ2 "ON")
SET(CPACK_SOURCE_TGZ "ON")
SET(CPACK_SOURCE_TXZ "ON")
SET(CPACK_SOURCE_TZ "ON")
SET(CPACK_SOURCE_ZIP "OFF")
SET(CPACK_SYSTEM_NAME "Linux")
SET(CPACK_TOPLEVEL_TAG "Linux")
SET(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/levnon/Downloads/DMS/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
