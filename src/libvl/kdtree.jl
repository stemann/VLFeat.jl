# Julia wrapper for header: /home/kevin/src/vlfeat/vl/kdtree.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_kdforest_new,
    vl_kdforest_new_searcher,
    vl_kdforest_delete,
    vl_kdforestsearcher_delete,
    vl_kdforest_build,
    vl_kdforest_query,
    vl_kdforest_query_with_array,
    vl_kdforestsearcher_query,
    vl_kdforest_get_depth_of_tree,
    vl_kdforest_get_num_nodes_of_tree,
    vl_kdforest_get_num_trees,
    vl_kdforest_get_data_dimension,
    vl_kdforest_get_data_type,
    vl_kdforest_set_max_num_comparisons,
    vl_kdforest_get_max_num_comparisons,
    vl_kdforest_set_thresholding_method,
    vl_kdforest_get_thresholding_method,
    vl_kdforest_searcher_get_forest,
    vl_kdforest_get_searcher


function vl_kdforest_new(dataType::vl_type,dimension::Integer,numTrees::Integer,normType::VlVectorComparisonType)
    ccall((:vl_kdforest_new,libvl),Ptr{VlKDForest},(vl_type,vl_size,vl_size,VlVectorComparisonType),dataType,dimension,numTrees,normType)
end

function vl_kdforest_new_searcher(kdforest)
    ccall((:vl_kdforest_new_searcher,libvl),Ptr{VlKDForestSearcher},(Ptr{VlKDForest},),kdforest)
end

function vl_kdforest_delete(self)
    ccall((:vl_kdforest_delete,libvl),Void,(Ptr{VlKDForest},),self)
end

function vl_kdforestsearcher_delete(searcher)
    ccall((:vl_kdforestsearcher_delete,libvl),Void,(Ptr{VlKDForestSearcher},),searcher)
end

function vl_kdforest_build(self,numData::Integer,data)
    ccall((:vl_kdforest_build,libvl),Void,(Ptr{VlKDForest},vl_size,Ptr{Void}),self,numData,data)
end

function vl_kdforest_query(self,neighbors,numNeighbors::Integer,query)
    ccall((:vl_kdforest_query,libvl),vl_size,(Ptr{VlKDForest},Ptr{VlKDForestNeighbor},vl_size,Ptr{Void}),self,neighbors,numNeighbors,query)
end

function vl_kdforest_query_with_array(self,index,numNeighbors::Integer,numQueries::Integer,distance,queries)
    ccall((:vl_kdforest_query_with_array,libvl),vl_size,(Ptr{VlKDForest},Ptr{vl_uint32},vl_size,vl_size,Ptr{Void},Ptr{Void}),self,index,numNeighbors,numQueries,distance,queries)
end

function vl_kdforestsearcher_query(self,neighbors,numNeighbors::Integer,query)
    ccall((:vl_kdforestsearcher_query,libvl),vl_size,(Ptr{VlKDForestSearcher},Ptr{VlKDForestNeighbor},vl_size,Ptr{Void}),self,neighbors,numNeighbors,query)
end

function vl_kdforest_get_depth_of_tree(self,treeIndex::vl_uindex)
    ccall((:vl_kdforest_get_depth_of_tree,libvl),vl_size,(Ptr{VlKDForest},vl_uindex),self,treeIndex)
end

function vl_kdforest_get_num_nodes_of_tree(self,treeIndex::vl_uindex)
    ccall((:vl_kdforest_get_num_nodes_of_tree,libvl),vl_size,(Ptr{VlKDForest},vl_uindex),self,treeIndex)
end

function vl_kdforest_get_num_trees(self)
    ccall((:vl_kdforest_get_num_trees,libvl),vl_size,(Ptr{VlKDForest},),self)
end

function vl_kdforest_get_data_dimension(self)
    ccall((:vl_kdforest_get_data_dimension,libvl),vl_size,(Ptr{VlKDForest},),self)
end

function vl_kdforest_get_data_type(self)
    ccall((:vl_kdforest_get_data_type,libvl),vl_type,(Ptr{VlKDForest},),self)
end

function vl_kdforest_set_max_num_comparisons(self,n::Integer)
    ccall((:vl_kdforest_set_max_num_comparisons,libvl),Void,(Ptr{VlKDForest},vl_size),self,n)
end

function vl_kdforest_get_max_num_comparisons(self)
    ccall((:vl_kdforest_get_max_num_comparisons,libvl),vl_size,(Ptr{VlKDForest},),self)
end

function vl_kdforest_set_thresholding_method(self,method::VlKDTreeThresholdingMethod)
    ccall((:vl_kdforest_set_thresholding_method,libvl),Void,(Ptr{VlKDForest},VlKDTreeThresholdingMethod),self,method)
end

function vl_kdforest_get_thresholding_method(self)
    ccall((:vl_kdforest_get_thresholding_method,libvl),VlKDTreeThresholdingMethod,(Ptr{VlKDForest},),self)
end

function vl_kdforest_searcher_get_forest(self)
    ccall((:vl_kdforest_searcher_get_forest,libvl),Ptr{VlKDForest},(Ptr{VlKDForestSearcher},),self)
end

function vl_kdforest_get_searcher(self,pos::vl_uindex)
    ccall((:vl_kdforest_get_searcher,libvl),Ptr{VlKDForestSearcher},(Ptr{VlKDForest},vl_uindex),self,pos)
end
