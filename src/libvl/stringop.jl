# Julia wrapper for header: /home/kevin/src/vlfeat/vl/stringop.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_string_copy,
    vl_string_copy_sub,
    vl_string_parse_protocol,
    vl_string_protocol_name,
    vl_string_basename,
    vl_string_replace_wildcard,
    vl_string_find_char_rev,
    vl_string_length,
    vl_string_casei_cmp,
    vl_enumeration_get,
    vl_enumeration_get_casei,
    vl_enumeration_get_by_value


function vl_string_copy(destination,destinationSize::Integer,source)
    ccall((:vl_string_copy,libvl),vl_size,(Ptr{Uint8},vl_size,Ptr{Uint8}),destination,destinationSize,source)
end

function vl_string_copy_sub(destination,destinationSize::Integer,beginning,_end)
    ccall((:vl_string_copy_sub,libvl),vl_size,(Ptr{Uint8},vl_size,Ptr{Uint8},Ptr{Uint8}),destination,destinationSize,beginning,_end)
end

function vl_string_parse_protocol(string,protocol)
    ccall((:vl_string_parse_protocol,libvl),Ptr{Uint8},(Ptr{Uint8},Ptr{Cint}),string,protocol)
end

function vl_string_protocol_name(prot::Integer)
    ccall((:vl_string_protocol_name,libvl),Ptr{Uint8},(Cint,),prot)
end

function vl_string_basename(destination,destinationSize::Integer,source,maxNumStrippedExtension::Integer)
    ccall((:vl_string_basename,libvl),vl_size,(Ptr{Uint8},vl_size,Ptr{Uint8},vl_size),destination,destinationSize,source,maxNumStrippedExtension)
end

function vl_string_replace_wildcard(destination,destinationSize::Integer,src,wildcardChar::Uint8,escapeChar::Uint8,replacement)
    ccall((:vl_string_replace_wildcard,libvl),vl_size,(Ptr{Uint8},vl_size,Ptr{Uint8},Uint8,Uint8,Ptr{Uint8}),destination,destinationSize,src,wildcardChar,escapeChar,replacement)
end

function vl_string_find_char_rev(beginning,_end,c::Uint8)
    ccall((:vl_string_find_char_rev,libvl),Ptr{Uint8},(Ptr{Uint8},Ptr{Uint8},Uint8),beginning,_end,c)
end

function vl_string_length(string)
    ccall((:vl_string_length,libvl),vl_size,(Ptr{Uint8},),string)
end

function vl_string_casei_cmp(string1,string2)
    ccall((:vl_string_casei_cmp,libvl),Cint,(Ptr{Uint8},Ptr{Uint8}),string1,string2)
end

function vl_enumeration_get(enumeration,name)
    ccall((:vl_enumeration_get,libvl),Ptr{VlEnumerator},(Ptr{VlEnumerator},Ptr{Uint8}),enumeration,name)
end

function vl_enumeration_get_casei(enumeration,name)
    ccall((:vl_enumeration_get_casei,libvl),Ptr{VlEnumerator},(Ptr{VlEnumerator},Ptr{Uint8}),enumeration,name)
end

function vl_enumeration_get_by_value(enumeration,value::vl_index)
    ccall((:vl_enumeration_get_by_value,libvl),Ptr{VlEnumerator},(Ptr{VlEnumerator},vl_index),enumeration,value)
end
