using BinDeps
using Compat

@BinDeps.setup

const version = "0.9.20"

libvl = library_dependency("libvl", aliases = ["vl"])

provides(Sources, URI("http://www.vlfeat.org/download/vlfeat-$version-bin.tar.gz"), libvl, unpacked_dir="vlfeat-$version", os = :Windows)
provides(Sources, URI("http://www.vlfeat.org/download/vlfeat-$version.tar.gz"),	libvl, os = :Unix)

src = joinpath(srcdir(libvl), "vlfeat-$version")
usr = usrdir(libvl)
shlib_ext = BinDeps.shlib_ext

archDict = @compat Dict(
	(:Linux, 32) => "glnx86",
	(:Linux, 64) => "glnxa64",
	(:Darwin, 32) => "maci",
	(:Darwin, 64) => "maci64",
	(:Windows, 32) => "win32",
	(:Windows, 64) => "win64")
arch = archDict[(OS_NAME, WORD_SIZE)]

provides(BuildProcess,
	(@build_steps begin
		GetSources(libvl)
		@build_steps begin
			FileRule(joinpath(usr, "lib", "libvl."*shlib_ext), @build_steps begin
				MakeTargets(src, ["all"]; env = @compat Dict("MEX" => ""))
				CreateDirectory(libdir(libvl))
				`cp -a $src/bin/$arch/libvl.$shlib_ext $usr/lib`
			end)
		end
	end), libvl, os = :Unix)

provides(BuildProcess,
	(@build_steps begin
		GetSources(libvl)
		@build_steps begin
			FileRule(joinpath(usr, "lib", "vl."*shlib_ext), @build_steps begin
				CreateDirectory(libdir(libvl))
				`cp -a $src/bin/$arch/vl.$shlib_ext $usr/lib`
			end)
		end
	end),libvl, os = :Windows)


@BinDeps.install @compat Dict(:libvl => :libvl)
