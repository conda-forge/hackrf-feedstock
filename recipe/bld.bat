setlocal EnableDelayedExpansion
@echo on

:: Add module for finding winpthreads
cmake -E copy "%RECIPE_DIR%/FindPThreads4W.cmake" "%SRC_DIR%/host/cmake/modules/FindPThreads4W.cmake"

cd host
if errorlevel 1 exit 1

mkdir build
cd build

:: configure
cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DENABLE_SHARED_LIB=ON ^
    -DENABLE_STATIC_LIB=OFF ^
    -DLIBUSB_INCLUDE_DIR:PATH="%LIBRARY_INC%\libusb-1.0" ^
    -DLIBUSB_LIBRARIES:PATH="%LIBRARY_LIB%\libusb-1.0.lib" ^
    ..
if errorlevel 1 exit 1

:: build
cmake --build . --config Release -- -j%CPU_COUNT%
if errorlevel 1 exit 1
