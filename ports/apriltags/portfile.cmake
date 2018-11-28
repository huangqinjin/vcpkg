include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO huangqinjin/${PORT}
    REF 1981c370a144a0a552d33d48113c86e11b81654a
    SHA512 "318d912d8ee098283901147a8a071cad76c7f700bfcc6f40a8a7939b2909540f8576ce216b07771797fe588f760866004f67226417262732a283f50e27a6792c"
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()
vcpkg_copy_pdbs()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
