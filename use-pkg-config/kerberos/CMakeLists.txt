
cmake_minimum_required(VERSION 3.15)

project(Kerberos VERSION 1.0)

## first - find package config
find_package(PkgConfig REQUIRED)

##
## then, find the krb5 package. 
## NOTE: the name of the module is exactly what you pass the pkg-config
##

pkg_check_modules(KRB REQUIRED krb5)

add_executable(client client.c)
add_executable(server server.c)

target_link_directories(client PRIVATE ${KRB_LIBRARY_DIRS})
target_link_libraries(client ${KRB_LIBRARIES})

target_link_directories(server PRIVATE ${KRB_LIBRARY_DIRS})
target_link_libraries(server  ${KRB_LIBRARIES})
