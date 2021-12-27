
set(MYNAME "Kuku")

if(${MYNAME} STREQUAL "Yoav")
	message("Hello Yoav")
elseif(${MYNAME} STREQUAL "Dikla")
	message("Hello Dikla")
else()
	message("I don't know you, ${MYNAME}")
endif()
