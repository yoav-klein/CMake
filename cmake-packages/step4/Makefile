
TEST_SPACE=~/test_install/test

clean:
	@cd using-mymath; rm -rf build
	@cd libmath; rm -rf build
	@sudo rm -rf $(TEST_SPACE)/*

build-debug:
	@cd libmath; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Debug; \
	cmake --build .; sudo cmake --install . --prefix $(TEST_SPACE)

build-release:
	@cd libmath; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE=Release; \
	cmake --build .; sudo cmake --install . --prefix $(TEST_SPACE)

build-test-release:
	@cd using-mymath; mkdir build; cd build; CMAKE_PREFIX_PATH=$(TEST_SPACE) cmake .. -DCMAKE_BUILD_TYPE=Release; cmake --build .

build-test-debug:
	@cd using-mymath; mkdir build; cd build; CMAKE_PREFIX_PATH=$(TEST_SPACE) cmake .. -DCMAKE_BUILD_TYPE=Debug; cmake --build .

test:
	using-mymath/build/test