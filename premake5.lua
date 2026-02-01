workspace "HelloABI"
    configurations { "Debug", "Release" }

-- Static library project
project "HelloABI.StaticLib"
    kind "StaticLib"
    language "C++"
    cppdialect "C++23"
    targetdir "bin/%{cfg.buildcfg}/static"
    objdir "bin-int/%{cfg.buildcfg}/static"

    files { "src/**.h", "src/**.cpp" }

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
    targetdir "bin/%{cfg.buildcfg}/dynamic"
    objdir "bin-int/%{cfg.buildcfg}/dynamic"

    files { "src/**.h", "src/**.cpp" }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
