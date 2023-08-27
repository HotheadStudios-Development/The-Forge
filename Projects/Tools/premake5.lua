project "SpirvCross"
	targetname "SpirvTools"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/Build_Data/bin/" .. outputDir .. "/%{wks.name}")
	objdir ("%{wks.location}/Build_Data/bin-obj/" .. outputDir .. "/%{wks.name}")

	files
	{
		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/SPIRV_Cross/*.cpp",

		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/SPIRV_Cross/SpirvTools.h",
	}

	includedirs
	{
		
	}

	defines 
	{
		
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		defines "FAE_DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "FAE_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "FAE_DIST"
		runtime "Release"
		optimize "on"
