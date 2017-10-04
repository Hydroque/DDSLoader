--[[
	gcc setup
	
--]]
gcc = {
	debug = true;
	warnings = " -Wall";
	windows = false;
	extra_warnings = "";
	libraries = " ";
	include_dir = " -I. -Iinclude";
	library_dir = " -L. -Llib -Ldll";
	extras = "";
	defines = " ";
}
gcc.g = gcc.debug and 3 or 0
gcc.o = gcc.debug and 0 or 2

install_path = build_type == os.types.Windows and (gcc.debug and ("bin\\Debug") or ("bin\\Release")) or (build_type == os.types.Linux and (gcc.debug and ("bin/Debug") or ("bin/Release")))

