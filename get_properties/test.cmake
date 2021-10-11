

function(test varname)
	message(${varname})
	message(${${varname}})
	
endfunction()

set(VAR Yoav)

test(VAR)

message(${VAR})
message("prop name: '${VAR}'")
get_property(val VARIABLE PROPERTY VAR)

message(${val})
