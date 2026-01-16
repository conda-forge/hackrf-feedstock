# Find conda-forge's `winpthreads-devel` headers/library on Windows

find_path(
    PThreads4W_INCLUDE_DIR
    NAMES pthread.h
    HINTS ENV THREADS_PTHREADS_INCLUDE_DIR
)

find_library(
    PThreads4W_LIBRARY
    NAMES pthread
    HINTS ENV THREADS_PTHREADS_WIN32_LIBRARY
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
  PThreads4W
  DEFAULT_MSG
  PThreads4W_LIBRARY PThreads4W_INCLUDE_DIR
)

if(PThreads4W_FOUND)
    add_library(PThreads4W::PThreads4W INTERFACE IMPORTED)
    set_target_properties(PThreads4W::PThreads4W PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${PThreads4W_INCLUDE_DIR}"
        INTERFACE_LINK_LIBRARIES "${PThreads4W_LIBRARY}"
    )
endif()
