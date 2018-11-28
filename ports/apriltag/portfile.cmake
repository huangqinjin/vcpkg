include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO huangqinjin/${PORT}
    REF 939ea55af49480acabb3f5ad4285db8ecb9623c9
    SHA512 "436abc7b38dd075b9b567ee37ef0c446a359f7b52120b24b5ea649f6d32d3896aa3158de2c83fa31bf5b1b91c3204c04b7acccae9ce15b694abbdaeeab291a57"
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

file(WRITE ${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright BSD)

