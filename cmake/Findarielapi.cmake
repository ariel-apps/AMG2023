set(SST_ELEMENTS_ROOT
	"$ENV{SST_ELEMENTS_ROOT}"
	CACHE
	PATH
    "SST-Elements source directory")

find_library(ARIELAPI_LIBRARY
	NAMES
	arielapi
	PATHS
    "${SST_ELEMENTS_ROOT}/src/sst/elements/ariel/api")

find_path(ARIELAPI_INCLUDE_DIR
	NAMES
	arielapi.h
	PATHS
    "${SST_ELEMENTS_ROOT}/src/sst/elements/ariel/api")

if ((NOT ARIELAPI_INCLUDE_DIR) OR (NOT ARIELAPI_LIBRARY))
	message(FATAL_ERROR "arielapi not found")
else()
	set(ARIELAPI_FOUND CACHE BOOL TRUE)
	set(ENV{USE_ARIELAPI} 1)
endif()
