project "Forge-Renderer"
	targetname "Renderer"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/Build_Data/bin/" .. outputDir .. "/%{wks.name}")
	objdir ("%{wks.location}/Build_Data/bin-obj/" .. outputDir .. "/%{wks.name}")

	files
	{
		"%{IncludeDir.Forge}/Common_3/Graphics/CommonShaderReflection.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/DependencyTracking.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/GPUConfig.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Graphics.cpp", 

		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D11/Direct3D11.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D11/Direct3D11Raytracing.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D11/Direct3D11ShaderReflection.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12Hooks.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12Raytracing.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12ShaderReflection.cpp",

		"%{IncludeDir.Forge}/Common_3/Graphics/Vulkan/Vulkan.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Vulkan/VulkanRaytracing.cpp",
		"%{IncludeDir.Forge}/Common_3/Graphics/Vulkan/VulkanShaderReflection.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/ResourceLoader.cpp",

		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/allocator.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/indexgenerator.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/overdrawoptimizer.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/vcacheoptimizer.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/vfetchoptimizer.cpp",

		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D11/Direct3D11CapBuilder.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D11/Direct3D11Config.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12CapBuilder.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12Config.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Direct3D12/Direct3D12Hooks.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/GraphicsConfig.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Interfaces/IGraphics.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Interfaces/IRay.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Interfaces/IShaderReflection.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/ags/AgsHelper.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/nvapi/NvApiHelper.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/VulkanMemoryAllocator/VulkanMemoryAllocator.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Vulkan/VulkanCapsBuilder.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/Vulkan/VulkanConfig.h",
		"%{IncludeDir.Forge}/Common_3/Resources/ResourceLoader/Interfaces/IResourceLoader.h",
	}

	libdirs
	{
		"%{IncludeDir.Forge}/Common_3/OS/ThirdParty/OpenSource/winpixeventruntime/bin/",

		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/lib/x64",
		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib",
		"%{IncludeDir.Forge}/Common_3/Graphics/ThirdParty/OpenSource/nvapi/amd64",

		"$(targetdir)",
	}

	syslibdirs
	{
		"%{LibraryDir.VulkanSDK}",
		"$(targetdir)",
		-- ("%{wks.location}/Build_Data/bin/" .. outputDir .. "/%{wks.name}"),
	}

	includedirs
	{
		"%{IncludeDir.VulkanSDK}",
	}

	links 
	{
		"amd_ags_x64.lib",
		"nvapi64.lib",
		
		"dxcompiler.lib",
		"WinPixEventRuntime.lib",
		"SpirvTools.lib",

		"SpirvCross",
	}

	copyDir = ("%{wks.location}/Build_Data/bin/" .. outputDir .. "/FaE_Editor")

	postbuildcommands
	{
		"{COPYFILE} \"%{wks.location}/FAE_Engine/vendor/The-Forge/Common_3/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll\" \"" .. copyDir .. "/amd_ags_x64.dll\"",
		"{COPYFILE} \"%{wks.location}/FAE_Engine/vendor/The-Forge/Common_3/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll\" \"" .. copyDir .. "/WinPixEventRunTime.dll\"",
		"{COPYFILE} \"%{wks.location}/FAE_Engine/vendor/The-Forge/Common_3/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/bin/x64/dxcompiler.dll\" \"" .. copyDir .. "/dxcompiler.dll\"",
		"{COPYFILE} \"%{wks.location}/FAE_Engine/vendor/The-Forge/Common_3/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/bin/x64/dxil.dll\" \"" .. copyDir .. "/dxil.dll\"",
		-- "{COPYFILE} %{Library.SDLL2} \"%{cfg.buildtarget.directory}/\""
		-- xcopy "$(SolutionDir)..\..\..\..\..\Common_3\OS\ThirdParty\OpenSource\winpixeventruntime\bin\WinPixEventRuntime.dll" "$(TargetDir)WinPixEventRunTime.dll"* /Y /D
		-- xcopy "$(SolutionDir)..\..\..\..\..\Common_3\Graphics\ThirdParty\OpenSource\DirectXShaderCompiler\bin\x64\dxcompiler.dll" "$(TargetDir)dxcompiler.dll"*/Y /D
		-- xcopy "$(SolutionDir)..\..\..\..\..\Common_3\Graphics\ThirdParty\OpenSource\DirectXShaderCompiler\bin\x64\dxil.dll" "$(TargetDir)dxil.dll"*/Y /D"
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
