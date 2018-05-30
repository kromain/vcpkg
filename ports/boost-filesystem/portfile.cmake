# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/filesystem
    REF boost-1.67.0
    SHA512 a81dbf5dcf1b7bde572b02276ee25f78c5673d64aee8b5f864e6b2e04f29cdbf8ecd469b1f039bcda3b490372d3387121a896bf7faf30f767f63c107a1cf581d
    HEAD_REF master
)

vcpkg_apply_patches(
    SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/ost-1.67.0-d7a1dca9d6
    PATCHES "${CMAKE_CURRENT_LIST_DIR}/fix-uwp.patch"
)

include(${CURRENT_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
