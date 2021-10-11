# This section of the documentation lists the properties available on
# CMake cache entries:
#
# http://cmake.org/cmake/help/v2.8.12/cmake.html#section_PropertiesonCacheEntries
#

#
# This code demonstrates retrieving the property values from a variable or
# cache entry.
#

# Function to print out the property value, set-ness, defined-ness, brief
# docs and full docs. If it's for the VALUE property on a cache entry, the
# other known cache entry properties are also printed recursively.
#
function(print_property_attributes type name propName)
  if ("${type}" STREQUAL "CACHE")
    set(propTypeArgs)
    list(APPEND propTypeArgs CACHE)
    list(APPEND propTypeArgs "${name}")
      # list used because "set(propTypeArgs CACHE "${name}")" is an error...
    if ("${propName}" STREQUAL "")
      set(propName VALUE)
    endif()
  elseif ("${type}" STREQUAL "VARIABLE")
    set(propTypeArgs VARIABLE)
    set(propName "${name}") # force propName to variable name for VARIABLE
  else()
    message("type '${type}' not implemented yet...")
    return()
  endif()

  message("propName='${propName}'") # the name of the property

  get_property(propIsSet ${propTypeArgs} PROPERTY "${propName}" SET)
  message("propIsSet='${propIsSet}'")

  if (propIsSet)
    get_property(propValue ${propTypeArgs} PROPERTY "${propName}")
    message("propValue='${propValue}'")

    get_property(propIsDefined ${propTypeArgs} PROPERTY "${propName}" DEFINED)
    message("propIsDefined='${propIsDefined}'")

    get_property(propBriefDocs ${propTypeArgs} PROPERTY "${propName}" BRIEF_DOCS)
    message("propBriefDocs='${propBriefDocs}'")

    get_property(propFullDocs ${propTypeArgs} PROPERTY "${propName}" FULL_DOCS)
    message("propFullDocs='${propFullDocs}'")

    if ("${type}" STREQUAL "CACHE")
    if ("${propName}" STREQUAL "VALUE")
      print_property_attributes(CACHE "${name}" ADVANCED)
      print_property_attributes(CACHE "${name}" HELPSTRING)
      print_property_attributes(CACHE "${name}" MODIFIED)
      print_property_attributes(CACHE "${name}" STRINGS)
      print_property_attributes(CACHE "${name}" TYPE)
    endif()
    endif()
  endif()
endfunction()


function(print_variable_property_values varname)
  set(name "${varname}")
  set(value "${${varname}}")

  message("name='${name}'")
  message("value='${value}'")

  get_property(varPropIsSet VARIABLE PROPERTY "${name}" SET)
  if (varPropIsSet)
    message("type='VARIABLE'")
    print_property_attributes(VARIABLE "${name}" "")
  else()
    message("variable '${name}' is not set")
  endif()

  get_property(cachePropIsSet CACHE "${name}" PROPERTY VALUE SET)
  if (cachePropIsSet)
    message("type='CACHE'")
    print_property_attributes(CACHE "${name}" "")
  else()
    message("cache entry '${name}' is not set")
  endif()

  message("")
endfunction()


message("cmake version ${CMAKE_VERSION}")
message("")

set(plain_variable "plain variable value")
set(cache_entry "cache entry value" CACHE STRING "cache doc string")

print_variable_property_values(plain_variable)
#print_variable_property_values(cache_entry)
#print_variable_property_values(never_set_variable)
