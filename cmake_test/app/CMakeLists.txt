

link_directories(/home/yoav/cmake_test/external)

#link_libraries(Library ext)

add_executable(MyApp main.cpp)

target_link_libraries(MyApp Library ext)
