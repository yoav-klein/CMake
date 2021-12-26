
message("From the Library")

message("CURRENT_SOURCE_DIR:")
message(${CMAKE_CURRENT_SOURCE_DIR})

message("CURRENT_LIST_DIR:")
message(${CMAKE_CURRENT_LIST_DIR})

add_library(MyMath SHARED math.cpp)
