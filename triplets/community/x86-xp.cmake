set(VCPKG_CMAKE_SYSTEM_VERSION 5.1)
set(VCPKG_TARGET_ARCHITECTURE x86)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
#set(VCPKG_PLATFORM_TOOLSET v141) # Use Visual Studio 15 2017 latest build tools 14.16
set(VCPKG_PLATFORM_TOOLSET_VERSION 14.27) # Use Visual Studio 16 2019 the last build tools version supports XP
set(VCPKG_C_FLAGS "/D_WIN32_WINNT=0x0501 /D_USING_V110_SDK71_ /I\\\"C:/Program Files (x86)/Microsoft SDKs/Windows/v7.1A/Include\\\"")
set(VCPKG_CXX_FLAGS ${VCPKG_C_FLAGS})
set(VCPKG_LINKER_FLAGS "/SUBSYSTEM:CONSOLE,5.01 /LIBPATH:\\\"C:/Program Files (x86)/Microsoft SDKs/Windows/v7.1A/Lib\\\"")
set(ENV{PATH} "C:/Program Files (x86)/Microsoft SDKs/Windows/v7.1A/Bin;$ENV{PATH}")
