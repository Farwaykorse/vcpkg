include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO amiremohamadi/DuckX
    REF v1.0.0
    SHA512 21db28f5c62a5695363cb844ce0ca45057433dd622dad44278459dd0582c92a8ca98d8bf597955426636ad31776abdcfdbe51a7fbfe256cfa8adcb8a2fd9410d
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug)

file(COPY ${SOURCE_PATH}/README.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/duckx)
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/duckx RENAME copyright)
