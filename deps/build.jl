using BinDeps
using Compat

@BinDeps.setup

const version = "0.9.20"

libvl = library_dependency("libvl", aliases = ["vl"])

provides(Sources, URI("http://www.vlfeat.org/download/vlfeat-$version.tar.gz"),	libvl)

src = joinpath(srcdir(libvl), "vlfeat-$version")
usr = usrdir(libvl)
shlib_ext = BinDeps.shlib_ext
arch = OS_NAME == :Linux ? "glnxa64" : OS_NAME == :Darwin ? "maci64" : "*"
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

@BinDeps.install @compat Dict(:libvl => :libvl)
