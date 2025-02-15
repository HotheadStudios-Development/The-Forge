project "Forge-OS"
	targetname "OS"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/Build_Data/bin/" .. outputDir .. "/%{wks.name}")
	objdir ("%{wks.location}/Build_Data/bin-obj/" .. outputDir .. "/%{wks.name}")
	
	rules
	{
		"FSLShader",
	}
	
	files
	{
		"%{IncludeDir.Forge}/Common_3/Application/CameraController.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/InputSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/Profiler/GpuProfiler.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/Profiler/ProfilerBase.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/Screenshot.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui_demo.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui_draw.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui_widgets.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui_tables.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/UI/UI.cpp",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LuaManager.cpp",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LuaManagerImpl.cpp",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LuaSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lapi.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lauxlib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lbaselib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lbitlib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lcode.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lcorolib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lctype.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldblib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldebug.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldo.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldump.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lfunc.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lgc.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/linit.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/liolib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/llex.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lmathlib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lmem.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/loadlib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lobject.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lopcodes.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/loslib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lparser.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstate.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstring.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstrlib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltable.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltablib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltm.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lundump.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lutf8lib.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lvm.c",
		"%{IncludeDir.Forge}/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/lzio.c",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/FontSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/stbtt.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/CPUConfig.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_windows.c",
		"%{IncludeDir.Forge}/Common_3/OS/WindowSystem/WindowSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/FileSystem/FileSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/FileSystem/SystemRun.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/FileSystem/ZipFileSystem.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/Log/Log.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/Math/Algorithms.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/Math/StbDs.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/MemoryTracking/MemoryTracking.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/basis_universal/transcoder/basisu_transcoder.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/allocator_forge.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/assert.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/EAStdC/EAMemory.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/EAStdC/EASprintf.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/fixed_pool.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/hashtable.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/intrusive_list.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/numeric_limits.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/red_black_tree.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/string.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/thread_support.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aescrypt.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aeskey.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aestab.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/hmac.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha1.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha2.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_crypt.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_crypt_brg.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_os.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_strm_raw.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_strm_wzaes.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_strm_zlib.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_zip.c",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/rmem/src/rmem_get_module_info.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/rmem/src/rmem_hook.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/rmem/src/rmem_lib.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/Threading/ThreadSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/Utilities/Timer.c",
		"%{IncludeDir.Forge}/Common_3/Application/Config.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IApp.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/ICameraController.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IInput.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IMiddleware.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IProfiler.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IScreenshot.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IUI.h",
		"%{IncludeDir.Forge}/Common_3/Application/Profiler/GpuProfiler.h",
		"%{IncludeDir.Forge}/Common_3/Application/Profiler/ProfilerBase.h",
		"%{IncludeDir.Forge}/Common_3/Application/Profiler/ProfilerHTML.h",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imconfig.h",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui.h",
		"%{IncludeDir.Forge}/Common_3/Application/ThirdParty/OpenSource/imgui/imgui_internal.h",
		"%{IncludeDir.Forge}/Common_3/Game/Interfaces/IScripting.h",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LuaManager.h",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LuaManagerCommon.h",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LuaManagerImpl.h",
		"%{IncludeDir.Forge}/Common_3/Game/Scripting/LunaV.hpp",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/Shaders/FSL/resources.h",
		"%{IncludeDir.Forge}/Common_3/Graphics/GPUConfig.h",
		"%{IncludeDir.Forge}/Common_3/Application/Interfaces/IFont.h",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsBase.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsFileSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsLog.c",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsStackTraceDump.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsThread.c",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsTime.c",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsToolsFileSystem.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsWindow.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/AnimatedObject.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/Animation.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/Clip.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/ClipController.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/ClipMask.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/Rig.cpp",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/SkeletonBatcher.cpp",
		"%{IncludeDir.Forge}/Common_3/OS/CPUConfig.h",
		"%{IncludeDir.Forge}/Common_3/OS/Interfaces/IOperatingSystem.h",
		"%{IncludeDir.Forge}/Common_3/OS/Windows/WindowsStackTraceDump.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/AnimatedObject.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/Animation.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/Clip.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/ClipController.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/ClipMask.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/Rig.h",
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/Animation/SkeletonBatcher.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Interfaces/IFileSystem.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Interfaces/ILog.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Interfaces/IMemory.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Interfaces/IThread.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Interfaces/ITime.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Interfaces/IToolFileSystem.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Log/Log.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Math/Algorithms.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Math/AlgorithmsImpl.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Math/BStringHashMap.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Math/MathTypes.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/RingBuffer.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aes.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aesopt.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aestab.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/brg_endian.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/brg_types.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/hmac.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha1.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha2.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_crypt.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_os.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_strm.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_strm_wzaes.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_strm_zlib.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/minizip/mz_zip.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/zip/miniz.h",
		"%{IncludeDir.Forge}/Common_3/Utilities/Threading/ThreadSystem.h",

		"%{IncludeDir.Forge}/Common_3/Utilities/ThirdParty/OpenSource/EASTL/EASTL.natvis",

		"%{IncludeDir.Forge}/Common_3/Application/UI/Shaders/FSL/imgui.frag.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/UI/Shaders/FSL/imgui.vert.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/UI/Shaders/FSL/textured_mesh.frag.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/UI/Shaders/FSL/textured_mesh.vert.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/UI/Shaders/FSL/UI_ShaderList.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/Shaders/FSL/fontstash.frag.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/Shaders/FSL/fontstash2D.vert.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/Shaders/FSL/fontstash3D.vert.fsl",
		"%{IncludeDir.Forge}/Common_3/Application/Fonts/Shaders/FSL/Fonts_ShaderList.fsl",
		
		"%{IncludeDir.Forge}/Middleware_3/PaniniProjection/Shaders/FSL/resources.h",
		"%{IncludeDir.Forge}/Middleware_3/PaniniProjection/Shaders/FSL/panini_projection.frag.fsl",
		"%{IncludeDir.Forge}/Middleware_3/PaniniProjection/Shaders/FSL/panini_projection.vert.fsl",
		"%{IncludeDir.Forge}/Middleware_3/PaniniProjection/Shaders/FSL/Panini_ShaderList.fsl",
	}

	includedirs
	{
		"%{IncludeDir.Forge}/Common_3/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include",

		"%{IncludeDir.VulkanSDK}",
	}

	defines 
	{
		"_CRT_SECURE_NO_WARNINGS",
		"_CRT_NONSTDC_NO_DEPRECATE",
	}

	filter "system:windows"
		systemversion "latest"
		
		 -- FSLShaderVars
		 -- {
			-- -- Language = "VULKAN",
			-- -- ShaderDir = "%{wks.location}/Build_Data/bin/" .. outputDir .. "/%{wks.name}/_Resources/Shaders/",
			-- -- ShaderBin = "%{wks.location}/Build_Data/bin/" .. outputDir .. "/%{wks.name}/_Resources/ShaderBin/",
		 -- }

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
