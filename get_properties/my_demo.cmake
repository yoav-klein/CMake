
############################################
#	Demonstrates the use of 'get_property'
###########################################

function(print_property propName)
	message("Property name: ${propName}")
	get_property(value VARIABLE PROPERTY ${propName})
	message("Value: ${value}")
endfunction()


set(NAME Yoav)
print_property(NAME)

