cmake -H. -B_build -DCMAKE_INSTALL_PREFIX=_install -DBUILD_TESTS=ON -DBUILD_EXAMPLES=ON -DCMAKE_BUILD_TYPE=Coverage -DCPACK_GENERATOR="TGZ" 
cmake —-build _build 
cmake --build _build --target install
cmake --build _build --target package
