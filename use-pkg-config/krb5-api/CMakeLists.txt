
cmake_minimum_required(VERSION 3.15)

project(Kerberos VERSION 1.0)

find_package(PkgConfig REQUIRED)

get_cmake_property(_variableNames VARIABLES)
list(SORT _variableNames)
foreach(_variableName in ${_variableNames})
    message(STATUS "${_variableName}=${${_variableName}}")
endforeach()

add_executable(client client.c)
add_executable(server server.c)
