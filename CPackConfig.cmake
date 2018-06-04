include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_CONTACT beenv12@mail.ru)
set(CPACK_PACKAGE_VERSION_MAJOR ${TREE_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${TREE_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${TREE_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${TREE_VERSION_TWEAK})
set(CPACK_PACKAGE_VERSION ${TREE_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "BST tree")

set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

set(CPACK_DEBIAN_PACKAGE_NAME "tree")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://Beenv12.github.io/BSTTree")
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

include(CPack)
