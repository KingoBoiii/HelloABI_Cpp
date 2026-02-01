workspace "HelloABI"
    configurations { "Debug", "Release" }
    platforms { "x64" }

filter "platforms:x64"
    architecture "x86_64"
filter {}

-- Static library project
project "HelloABI.StaticLib"
    kind "StaticLib"
    language "C++"
    cppdialect "C++23"

    targetdir ("bin/%{cfg.platform}/%{cfg.buildcfg}/static")
    objdir    ("bin-int/%{cfg.platform}/%{cfg.buildcfg}/static")

    files { "include/**.h", "include/**.hpp", "src/**.h", "src/**.hpp", "src/**.cpp" }
    includedirs { "include", "src" }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

-- Dynamic library project
project "HelloABI.DynamicLib"
    kind "SharedLib"
    language "C++"
    cppdialect "C++23"

    targetdir ("bin/%{cfg.platform}/%{cfg.buildcfg}/dynamic")
    objdir    ("bin-int/%{cfg.platform}/%{cfg.buildcfg}/dynamic")

    files { "include/**.h", "include/**.hpp", "src/**.h", "src/**.hpp", "src/**.cpp" }
    includedirs { "include", "src" }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
