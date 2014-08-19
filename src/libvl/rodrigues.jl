# Julia wrapper for header: /home/kevin/src/vlfeat/vl/rodrigues.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_rodrigues,
    vl_irodrigues


function vl_rodrigues(R_pt,dR_pt,om_pt)
    ccall((:vl_rodrigues,libvl),Void,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),R_pt,dR_pt,om_pt)
end

function vl_irodrigues(om_pt,dom_pt,R_pt)
    ccall((:vl_irodrigues,libvl),Void,(Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),om_pt,dom_pt,R_pt)
end
