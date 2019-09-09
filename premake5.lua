project "OpenAL"
	kind "StaticLib"
	language "CPP"
	cppdialect "c++17"

	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")



	files {
		"common/albyte.h",
		"common/alcomplex.cpp",
		"common/alcomplex.h",
		"common/alexcpt.cpp",
		"common/alexcpt.h",
		"common/almalloc.cpp",
		"common/almalloc.h",
		"common/alnumeric.h",
		"common/aloptional.h",
		"common/alspan.h",
		"common/atomic.h",
		"common/dynload.cpp",
		"common/dynload.h",
		"common/endiantest.h",
		"common/intrusive_ptr.h",
		"common/math_defs.h",
		"common/opthelpers.h",
		"common/strutils.cpp",
		"common/strutils.h",
		"common/threads.cpp",
		"common/threads.h",
		"common/vecmat.h",
		"common/vector.h",
		"al/auxeffectslot.cpp",
		"al/auxeffectslot.h",
		"al/buffer.cpp",
		"al/buffer.h",
		"al/effect.cpp",
		"al/effect.h",
		"al/error.cpp",
		"al/event.cpp",
		"al/event.h",
		"al/extension.cpp",
		"al/filter.cpp",
		"al/filter.h",
		"al/listener.cpp",
		"al/listener.h",
		"al/source.cpp",
		"al/source.h",
		"al/state.cpp",
		"alc/alc.cpp",
		"alc/alcmain.h",
		"alc/alu.cpp",
		"alc/alu.h",
		"alc/alconfig.cpp",
		"alc/alconfig.h",
		"alc/alcontext.h",
		"alc/ambdec.cpp",
		"alc/ambdec.h",
		"alc/ambidefs.h",
		"alc/bformatdec.cpp",
		"alc/bformatdec.h",
		"alc/bs2b.cpp",
		"alc/bs2b.h",
		"alc/compat.h",
		"alc/converter.cpp",
		"alc/converter.h",
		"alc/cpu_caps.h",
		"alc/devformat.h",
		"alc/effects/base.h",
		"alc/effects/autowah.cpp",
		"alc/effects/chorus.cpp",
		"alc/effects/compressor.cpp",
		"alc/effects/dedicated.cpp",
		"alc/effects/distortion.cpp",
		"alc/effects/echo.cpp",
		"alc/effects/equalizer.cpp",
		"alc/effects/fshifter.cpp",
		"alc/effects/modulator.cpp",
		"alc/effects/null.cpp",
		"alc/effects/pshifter.cpp",
		"alc/effects/reverb.cpp",
		"alc/effects/vmorpher.cpp",
		"alc/filters/biquad.h",
		"alc/filters/biquad.cpp",
		"alc/filters/nfc.cpp",
		"alc/filters/nfc.h",
		"alc/filters/splitter.cpp",
		"alc/filters/splitter.h",
		"alc/fpu_modes.h",
		"alc/helpers.cpp",
		"alc/hrtf.cpp",
		"alc/hrtf.h",
		"alc/inprogext.h",
		"alc/logging.h",
		"alc/mastering.cpp",
		"alc/mastering.h",
		"alc/mixvoice.cpp",
		"alc/panning.cpp",
		"alc/ringbuffer.cpp",
		"alc/ringbuffer.h",
		"alc/uhjfilter.cpp",
		"alc/uhjfilter.h",
		"alc/uiddefs.cpp",
		"alc/mixer/defs.h",
		"alc/mixer/hrtfbase.h",
		"alc/mixer/mixer_c.cpp",
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"