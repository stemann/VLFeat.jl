# Julia wrapper for header: /home/kevin/src/vlfeat/vl/gmm.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_gmm_new,
    vl_gmm_new_copy,
    vl_gmm_delete,
    vl_gmm_reset,
    vl_gmm_cluster,
    vl_gmm_init_with_rand_data,
    vl_gmm_init_with_kmeans,
    vl_gmm_em,
    vl_gmm_set_means,
    vl_gmm_set_covariances,
    vl_gmm_set_priors,
    vl_get_gmm_data_posteriors_f,
    vl_get_gmm_data_posteriors_d,
    vl_gmm_set_num_repetitions,
    vl_gmm_set_max_num_iterations,
    vl_gmm_set_verbosity,
    vl_gmm_set_initialization,
    vl_gmm_set_kmeans_init_object,
    vl_gmm_set_covariance_lower_bounds,
    vl_gmm_set_covariance_lower_bound,
    vl_gmm_get_means,
    vl_gmm_get_covariances,
    vl_gmm_get_priors,
    vl_gmm_get_posteriors,
    vl_gmm_get_data_type,
    vl_gmm_get_dimension,
    vl_gmm_get_num_repetitions,
    vl_gmm_get_num_data,
    vl_gmm_get_num_clusters,
    vl_gmm_get_loglikelyhood,
    vl_gmm_get_verbosity,
    vl_gmm_get_max_num_iterations,
    vl_gmm_get_num_repetitions,
    vl_gmm_get_initialization,
    vl_gmm_get_kmeans_init_object,
    vl_gmm_get_covariance_lower_bounds


function vl_gmm_new(dataType::vl_type,dimension::vl_size,numComponents::vl_size)
    ccall((:vl_gmm_new,libvl),Ptr{VlGMM},(vl_type,vl_size,vl_size),dataType,dimension,numComponents)
end

function vl_gmm_new_copy(gmm)
    ccall((:vl_gmm_new_copy,libvl),Ptr{VlGMM},(Ptr{VlGMM},),gmm)
end

function vl_gmm_delete(self)
    ccall((:vl_gmm_delete,libvl),Void,(Ptr{VlGMM},),self)
end

function vl_gmm_reset(self)
    ccall((:vl_gmm_reset,libvl),Void,(Ptr{VlGMM},),self)
end

function vl_gmm_cluster(self,data,numData::vl_size)
    ccall((:vl_gmm_cluster,libvl),Cdouble,(Ptr{VlGMM},Ptr{Void},vl_size),self,data,numData)
end

function vl_gmm_init_with_rand_data(self,data,numData::vl_size)
    ccall((:vl_gmm_init_with_rand_data,libvl),Void,(Ptr{VlGMM},Ptr{Void},vl_size),self,data,numData)
end

function vl_gmm_init_with_kmeans(self,data,numData::vl_size,kmeansInit)
    ccall((:vl_gmm_init_with_kmeans,libvl),Void,(Ptr{VlGMM},Ptr{Void},vl_size,Ptr{VlKMeans}),self,data,numData,kmeansInit)
end

function vl_gmm_em(self,data,numData::vl_size)
    ccall((:vl_gmm_em,libvl),Cdouble,(Ptr{VlGMM},Ptr{Void},vl_size),self,data,numData)
end

function vl_gmm_set_means(self,means)
    ccall((:vl_gmm_set_means,libvl),Void,(Ptr{VlGMM},Ptr{Void}),self,means)
end

function vl_gmm_set_covariances(self,covariances)
    ccall((:vl_gmm_set_covariances,libvl),Void,(Ptr{VlGMM},Ptr{Void}),self,covariances)
end

function vl_gmm_set_priors(self,priors)
    ccall((:vl_gmm_set_priors,libvl),Void,(Ptr{VlGMM},Ptr{Void}),self,priors)
end

function vl_get_gmm_data_posteriors_f(posteriors,numClusters::vl_size,numData::vl_size,priors,means,dimension::vl_size,covariances,data)
    ccall((:vl_get_gmm_data_posteriors_f,libvl),Cdouble,(Ptr{Cfloat},vl_size,vl_size,Ptr{Cfloat},Ptr{Cfloat},vl_size,Ptr{Cfloat},Ptr{Cfloat}),posteriors,numClusters,numData,priors,means,dimension,covariances,data)
end

function vl_get_gmm_data_posteriors_d(posteriors,numClusters::vl_size,numData::vl_size,priors,means,dimension::vl_size,covariances,data)
    ccall((:vl_get_gmm_data_posteriors_d,libvl),Cdouble,(Ptr{Cdouble},vl_size,vl_size,Ptr{Cdouble},Ptr{Cdouble},vl_size,Ptr{Cdouble},Ptr{Cdouble}),posteriors,numClusters,numData,priors,means,dimension,covariances,data)
end

function vl_gmm_set_num_repetitions(self,numRepetitions::vl_size)
    ccall((:vl_gmm_set_num_repetitions,libvl),Void,(Ptr{VlGMM},vl_size),self,numRepetitions)
end

function vl_gmm_set_max_num_iterations(self,maxNumIterations::vl_size)
    ccall((:vl_gmm_set_max_num_iterations,libvl),Void,(Ptr{VlGMM},vl_size),self,maxNumIterations)
end

function vl_gmm_set_verbosity(self,verbosity::Integer)
    ccall((:vl_gmm_set_verbosity,libvl),Void,(Ptr{VlGMM},Cint),self,verbosity)
end

function vl_gmm_set_initialization(self,init::VlGMMInitialization)
    ccall((:vl_gmm_set_initialization,libvl),Void,(Ptr{VlGMM},VlGMMInitialization),self,init)
end

function vl_gmm_set_kmeans_init_object(self,kmeans)
    ccall((:vl_gmm_set_kmeans_init_object,libvl),Void,(Ptr{VlGMM},Ptr{VlKMeans}),self,kmeans)
end

function vl_gmm_set_covariance_lower_bounds(self,bounds)
    ccall((:vl_gmm_set_covariance_lower_bounds,libvl),Void,(Ptr{VlGMM},Ptr{Cdouble}),self,bounds)
end

function vl_gmm_set_covariance_lower_bound(self,bound::Cdouble)
    ccall((:vl_gmm_set_covariance_lower_bound,libvl),Void,(Ptr{VlGMM},Cdouble),self,bound)
end

function vl_gmm_get_means(self)
    ccall((:vl_gmm_get_means,libvl),Ptr{Void},(Ptr{VlGMM},),self)
end

function vl_gmm_get_covariances(self)
    ccall((:vl_gmm_get_covariances,libvl),Ptr{Void},(Ptr{VlGMM},),self)
end

function vl_gmm_get_priors(self)
    ccall((:vl_gmm_get_priors,libvl),Ptr{Void},(Ptr{VlGMM},),self)
end

function vl_gmm_get_posteriors(self)
    ccall((:vl_gmm_get_posteriors,libvl),Ptr{Void},(Ptr{VlGMM},),self)
end

function vl_gmm_get_data_type(self)
    ccall((:vl_gmm_get_data_type,libvl),vl_type,(Ptr{VlGMM},),self)
end

function vl_gmm_get_dimension(self)
    ccall((:vl_gmm_get_dimension,libvl),vl_size,(Ptr{VlGMM},),self)
end

function vl_gmm_get_num_repetitions(self)
    ccall((:vl_gmm_get_num_repetitions,libvl),vl_size,(Ptr{VlGMM},),self)
end

function vl_gmm_get_num_data(self)
    ccall((:vl_gmm_get_num_data,libvl),vl_size,(Ptr{VlGMM},),self)
end

function vl_gmm_get_num_clusters(self)
    ccall((:vl_gmm_get_num_clusters,libvl),vl_size,(Ptr{VlGMM},),self)
end

function vl_gmm_get_loglikelyhood(self)
    ccall((:vl_gmm_get_loglikelyhood,libvl),Cdouble,(Ptr{VlGMM},),self)
end

function vl_gmm_get_verbosity(self)
    ccall((:vl_gmm_get_verbosity,libvl),Cint,(Ptr{VlGMM},),self)
end

function vl_gmm_get_max_num_iterations(self)
    ccall((:vl_gmm_get_max_num_iterations,libvl),vl_size,(Ptr{VlGMM},),self)
end

function vl_gmm_get_num_repetitions(self)
    ccall((:vl_gmm_get_num_repetitions,libvl),vl_size,(Ptr{VlGMM},),self)
end

function vl_gmm_get_initialization(self)
    ccall((:vl_gmm_get_initialization,libvl),VlGMMInitialization,(Ptr{VlGMM},),self)
end

function vl_gmm_get_kmeans_init_object(self)
    ccall((:vl_gmm_get_kmeans_init_object,libvl),Ptr{VlKMeans},(Ptr{VlGMM},),self)
end

function vl_gmm_get_covariance_lower_bounds(self)
    ccall((:vl_gmm_get_covariance_lower_bounds,libvl),Ptr{Cdouble},(Ptr{VlGMM},),self)
end
