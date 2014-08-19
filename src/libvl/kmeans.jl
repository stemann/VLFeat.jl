# Julia wrapper for header: /home/kevin/src/vlfeat/vl/kmeans.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_kmeans_new,
    vl_kmeans_new_copy,
    vl_kmeans_delete,
    vl_kmeans_reset,
    vl_kmeans_cluster,
    vl_kmeans_quantize,
    vl_kmeans_quantize_ANN,
    vl_kmeans_set_centers,
    vl_kmeans_init_centers_with_rand_data,
    vl_kmeans_init_centers_plus_plus,
    vl_kmeans_refine_centers,
    vl_kmeans_get_data_type,
    vl_kmeans_get_distance,
    vl_kmeans_get_algorithm,
    vl_kmeans_get_initialization,
    vl_kmeans_get_num_repetitions,
    vl_kmeans_get_dimension,
    vl_kmeans_get_num_centers,
    vl_kmeans_get_verbosity,
    vl_kmeans_get_max_num_iterations,
    vl_kmeans_get_min_energy_variation,
    vl_kmeans_get_max_num_comparisons,
    vl_kmeans_get_num_trees,
    vl_kmeans_get_energy,
    vl_kmeans_get_centers,
    vl_kmeans_set_algorithm,
    vl_kmeans_set_initialization,
    vl_kmeans_set_num_repetitions,
    vl_kmeans_set_max_num_iterations,
    vl_kmeans_set_min_energy_variation,
    vl_kmeans_set_verbosity,
    vl_kmeans_set_max_num_comparisons,
    vl_kmeans_set_num_trees,
    vl_kmeans_get_data_type,
    vl_kmeans_get_dimension,
    vl_kmeans_get_distance,
    vl_kmeans_get_num_centers,
    vl_kmeans_get_energy,
    vl_kmeans_get_verbosity,
    vl_kmeans_set_verbosity,
    vl_kmeans_get_centers,
    vl_kmeans_get_max_num_iterations,
    vl_kmeans_set_max_num_iterations,
    vl_kmeans_get_num_repetitions,
    vl_kmeans_set_num_repetitions,
    vl_kmeans_get_min_energy_variation,
    vl_kmeans_set_min_energy_variation,
    vl_kmeans_get_algorithm,
    vl_kmeans_set_algorithm,
    vl_kmeans_get_initialization,
    vl_kmeans_set_initialization,
    vl_kmeans_get_max_num_comparisons,
    vl_kmeans_set_max_num_comparisons,
    vl_kmeans_set_num_trees,
    vl_kmeans_get_num_trees


function vl_kmeans_new(dataType::vl_type,distance::VlVectorComparisonType)
    ccall((:vl_kmeans_new,libvl),Ptr{VlKMeans},(vl_type,VlVectorComparisonType),dataType,distance)
end

function vl_kmeans_new_copy(kmeans)
    ccall((:vl_kmeans_new_copy,libvl),Ptr{VlKMeans},(Ptr{VlKMeans},),kmeans)
end

function vl_kmeans_delete(self)
    ccall((:vl_kmeans_delete,libvl),Void,(Ptr{VlKMeans},),self)
end

function vl_kmeans_reset(self)
    ccall((:vl_kmeans_reset,libvl),Void,(Ptr{VlKMeans},),self)
end

function vl_kmeans_cluster(self,data,dimension::Integer,numData::Integer,numCenters::Integer)
    ccall((:vl_kmeans_cluster,libvl),Cdouble,(Ptr{VlKMeans},Ptr{Void},vl_size,vl_size,vl_size),self,data,dimension,numData,numCenters)
end

function vl_kmeans_quantize(self,assignments,distances,data,numData::Integer)
    ccall((:vl_kmeans_quantize,libvl),Void,(Ptr{VlKMeans},Ptr{vl_uint32},Ptr{Void},Ptr{Void},vl_size),self,assignments,distances,data,numData)
end

function vl_kmeans_quantize_ANN(self,assignments,distances,data,numData::Integer,iteration::Integer)
    ccall((:vl_kmeans_quantize_ANN,libvl),Void,(Ptr{VlKMeans},Ptr{vl_uint32},Ptr{Void},Ptr{Void},vl_size,vl_size),self,assignments,distances,data,numData,iteration)
end

function vl_kmeans_set_centers(self,centers,dimension::Integer,numCenters::Integer)
    ccall((:vl_kmeans_set_centers,libvl),Void,(Ptr{VlKMeans},Ptr{Void},vl_size,vl_size),self,centers,dimension,numCenters)
end

function vl_kmeans_init_centers_with_rand_data(self,data,dimensions::Integer,numData::Integer,numCenters::Integer)
    ccall((:vl_kmeans_init_centers_with_rand_data,libvl),Void,(Ptr{VlKMeans},Ptr{Void},vl_size,vl_size,vl_size),self,data,dimensions,numData,numCenters)
end

function vl_kmeans_init_centers_plus_plus(self,data,dimensions::Integer,numData::Integer,numCenters::Integer)
    ccall((:vl_kmeans_init_centers_plus_plus,libvl),Void,(Ptr{VlKMeans},Ptr{Void},vl_size,vl_size,vl_size),self,data,dimensions,numData,numCenters)
end

function vl_kmeans_refine_centers(self,data,numData::Integer)
    ccall((:vl_kmeans_refine_centers,libvl),Cdouble,(Ptr{VlKMeans},Ptr{Void},vl_size),self,data,numData)
end

function vl_kmeans_get_data_type(self)
    ccall((:vl_kmeans_get_data_type,libvl),vl_type,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_distance(self)
    ccall((:vl_kmeans_get_distance,libvl),VlVectorComparisonType,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_algorithm(self)
    ccall((:vl_kmeans_get_algorithm,libvl),VlKMeansAlgorithm,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_initialization(self)
    ccall((:vl_kmeans_get_initialization,libvl),VlKMeansInitialization,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_num_repetitions(self)
    ccall((:vl_kmeans_get_num_repetitions,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_dimension(self)
    ccall((:vl_kmeans_get_dimension,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_num_centers(self)
    ccall((:vl_kmeans_get_num_centers,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_verbosity(self)
    ccall((:vl_kmeans_get_verbosity,libvl),Cint,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_max_num_iterations(self)
    ccall((:vl_kmeans_get_max_num_iterations,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_min_energy_variation(self)
    ccall((:vl_kmeans_get_min_energy_variation,libvl),Cdouble,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_max_num_comparisons(self)
    ccall((:vl_kmeans_get_max_num_comparisons,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_num_trees(self)
    ccall((:vl_kmeans_get_num_trees,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_energy(self)
    ccall((:vl_kmeans_get_energy,libvl),Cdouble,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_centers(self)
    ccall((:vl_kmeans_get_centers,libvl),Ptr{Void},(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_algorithm(self,algorithm::VlKMeansAlgorithm)
    ccall((:vl_kmeans_set_algorithm,libvl),Void,(Ptr{VlKMeans},VlKMeansAlgorithm),self,algorithm)
end

function vl_kmeans_set_initialization(self,initialization::VlKMeansInitialization)
    ccall((:vl_kmeans_set_initialization,libvl),Void,(Ptr{VlKMeans},VlKMeansInitialization),self,initialization)
end

function vl_kmeans_set_num_repetitions(self,numRepetitions::Integer)
    ccall((:vl_kmeans_set_num_repetitions,libvl),Void,(Ptr{VlKMeans},vl_size),self,numRepetitions)
end

function vl_kmeans_set_max_num_iterations(self,maxNumIterations::Integer)
    ccall((:vl_kmeans_set_max_num_iterations,libvl),Void,(Ptr{VlKMeans},vl_size),self,maxNumIterations)
end

function vl_kmeans_set_min_energy_variation(self,minEnergyVariation::Cdouble)
    ccall((:vl_kmeans_set_min_energy_variation,libvl),Void,(Ptr{VlKMeans},Cdouble),self,minEnergyVariation)
end

function vl_kmeans_set_verbosity(self,verbosity::Integer)
    ccall((:vl_kmeans_set_verbosity,libvl),Void,(Ptr{VlKMeans},Cint),self,verbosity)
end

function vl_kmeans_set_max_num_comparisons(self,maxNumComparisons::Integer)
    ccall((:vl_kmeans_set_max_num_comparisons,libvl),Void,(Ptr{VlKMeans},vl_size),self,maxNumComparisons)
end

function vl_kmeans_set_num_trees(self,numTrees::Integer)
    ccall((:vl_kmeans_set_num_trees,libvl),Void,(Ptr{VlKMeans},vl_size),self,numTrees)
end

function vl_kmeans_get_data_type(self)
    ccall((:vl_kmeans_get_data_type,libvl),vl_type,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_dimension(self)
    ccall((:vl_kmeans_get_dimension,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_distance(self)
    ccall((:vl_kmeans_get_distance,libvl),VlVectorComparisonType,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_num_centers(self)
    ccall((:vl_kmeans_get_num_centers,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_energy(self)
    ccall((:vl_kmeans_get_energy,libvl),Cdouble,(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_verbosity(self)
    ccall((:vl_kmeans_get_verbosity,libvl),Cint,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_verbosity(self,verbosity::Integer)
    ccall((:vl_kmeans_set_verbosity,libvl),Void,(Ptr{VlKMeans},Cint),self,verbosity)
end

function vl_kmeans_get_centers(self)
    ccall((:vl_kmeans_get_centers,libvl),Ptr{Void},(Ptr{VlKMeans},),self)
end

function vl_kmeans_get_max_num_iterations(self)
    ccall((:vl_kmeans_get_max_num_iterations,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_max_num_iterations(self,maxNumIterations::Integer)
    ccall((:vl_kmeans_set_max_num_iterations,libvl),Void,(Ptr{VlKMeans},vl_size),self,maxNumIterations)
end

function vl_kmeans_get_num_repetitions(self)
    ccall((:vl_kmeans_get_num_repetitions,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_num_repetitions(self,numRepetitions::Integer)
    ccall((:vl_kmeans_set_num_repetitions,libvl),Void,(Ptr{VlKMeans},vl_size),self,numRepetitions)
end

function vl_kmeans_get_min_energy_variation(self)
    ccall((:vl_kmeans_get_min_energy_variation,libvl),Cdouble,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_min_energy_variation(self,minEnergyVariation::Cdouble)
    ccall((:vl_kmeans_set_min_energy_variation,libvl),Void,(Ptr{VlKMeans},Cdouble),self,minEnergyVariation)
end

function vl_kmeans_get_algorithm(self)
    ccall((:vl_kmeans_get_algorithm,libvl),VlKMeansAlgorithm,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_algorithm(self,algorithm::VlKMeansAlgorithm)
    ccall((:vl_kmeans_set_algorithm,libvl),Void,(Ptr{VlKMeans},VlKMeansAlgorithm),self,algorithm)
end

function vl_kmeans_get_initialization(self)
    ccall((:vl_kmeans_get_initialization,libvl),VlKMeansInitialization,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_initialization(self,initialization::VlKMeansInitialization)
    ccall((:vl_kmeans_set_initialization,libvl),Void,(Ptr{VlKMeans},VlKMeansInitialization),self,initialization)
end

function vl_kmeans_get_max_num_comparisons(self)
    ccall((:vl_kmeans_get_max_num_comparisons,libvl),vl_size,(Ptr{VlKMeans},),self)
end

function vl_kmeans_set_max_num_comparisons(self,maxNumComparisons::Integer)
    ccall((:vl_kmeans_set_max_num_comparisons,libvl),Void,(Ptr{VlKMeans},vl_size),self,maxNumComparisons)
end

function vl_kmeans_set_num_trees(self,numTrees::Integer)
    ccall((:vl_kmeans_set_num_trees,libvl),Void,(Ptr{VlKMeans},vl_size),self,numTrees)
end

function vl_kmeans_get_num_trees(self)
    ccall((:vl_kmeans_get_num_trees,libvl),vl_size,(Ptr{VlKMeans},),self)
end
