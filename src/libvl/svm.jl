# Julia wrapper for header: /home/kevin/src/vlfeat/vl/svm.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_svm_new,
    vl_svm_new_with_dataset,
    vl_svm_new_with_abstract_data,
    vl_svm_delete,
    vl_svm_get_statistics,
    vl_svm_get_model,
    vl_svm_get_bias,
    vl_svm_get_dimension,
    vl_svm_get_num_data,
    vl_svm_get_epsilon,
    vl_svm_get_bias_learning_rate,
    vl_svm_get_max_num_iterations,
    vl_svm_get_diagnostic_frequency,
    vl_svm_get_solver,
    vl_svm_get_bias_multiplier,
    vl_svm_get_lambda,
    vl_svm_get_iteration_number,
    vl_svm_get_scores,
    vl_svm_get_weights,
    vl_svm_set_epsilon,
    vl_svm_set_bias_learning_rate,
    vl_svm_set_max_num_iterations,
    vl_svm_set_diagnostic_frequency,
    vl_svm_set_bias_multiplier,
    vl_svm_set_model,
    vl_svm_set_bias,
    vl_svm_set_iteration_number,
    vl_svm_set_weights,
    vl_svm_set_diagnostic_function,
    vl_svm_set_loss_function,
    vl_svm_set_loss_derivative_function,
    vl_svm_set_conjugate_loss_function,
    vl_svm_set_dca_update_function,
    vl_svm_set_data_functions,
    vl_svm_set_loss,
    vl_svm_train,
    vl_svm_hinge_loss,
    vl_svm_hinge_loss_derivative,
    vl_svm_hinge_conjugate_loss,
    vl_svm_hinge_dca_update,
    vl_svm_hinge2_loss,
    vl_svm_hinge2_loss_derivative,
    vl_svm_hinge2_conjugate_loss,
    vl_svm_hinge2_dca_update,
    vl_svm_l1_loss,
    vl_svm_l1_loss_derivative,
    vl_svm_l1_conjugate_loss,
    vl_svm_l1_dca_update,
    vl_svm_l2_loss,
    vl_svm_l2_loss_derivative,
    vl_svm_l2_conjugate_loss,
    vl_svm_l2_dca_update,
    vl_svm_logistic_loss,
    vl_svm_logistic_loss_derivative,
    vl_svm_logistic_conjugate_loss,
    vl_svm_logistic_dca_update


function vl_svm_new(_type::VlSvmSolverType,data,dimension::vl_size,numData::vl_size,labels,lambda::Cdouble)
    ccall((:vl_svm_new,libvl),Ptr{VlSvm},(VlSvmSolverType,Ptr{Cdouble},vl_size,vl_size,Ptr{Cdouble},Cdouble),_type,data,dimension,numData,labels,lambda)
end

function vl_svm_new_with_dataset(_type::VlSvmSolverType,dataset,labels,lambda::Cdouble)
    ccall((:vl_svm_new_with_dataset,libvl),Ptr{VlSvm},(VlSvmSolverType,Ptr{VlSvmDataset},Ptr{Cdouble},Cdouble),_type,dataset,labels,lambda)
end

function vl_svm_new_with_abstract_data(_type::VlSvmSolverType,data,dimension::vl_size,numData::vl_size,labels,lambda::Cdouble)
    ccall((:vl_svm_new_with_abstract_data,libvl),Ptr{VlSvm},(VlSvmSolverType,Ptr{Void},vl_size,vl_size,Ptr{Cdouble},Cdouble),_type,data,dimension,numData,labels,lambda)
end

function vl_svm_delete(self)
    ccall((:vl_svm_delete,libvl),Void,(Ptr{VlSvm},),self)
end

function vl_svm_get_statistics(self)
    ccall((:vl_svm_get_statistics,libvl),Ptr{VlSvmStatistics},(Ptr{VlSvm},),self)
end

function vl_svm_get_model(self)
    ccall((:vl_svm_get_model,libvl),Ptr{Cdouble},(Ptr{VlSvm},),self)
end

function vl_svm_get_bias(self)
    ccall((:vl_svm_get_bias,libvl),Cdouble,(Ptr{VlSvm},),self)
end

function vl_svm_get_dimension(self)
    ccall((:vl_svm_get_dimension,libvl),vl_size,(Ptr{VlSvm},),self)
end

function vl_svm_get_num_data(self)
    ccall((:vl_svm_get_num_data,libvl),vl_size,(Ptr{VlSvm},),self)
end

function vl_svm_get_epsilon(self)
    ccall((:vl_svm_get_epsilon,libvl),Cdouble,(Ptr{VlSvm},),self)
end

function vl_svm_get_bias_learning_rate(self)
    ccall((:vl_svm_get_bias_learning_rate,libvl),Cdouble,(Ptr{VlSvm},),self)
end

function vl_svm_get_max_num_iterations(self)
    ccall((:vl_svm_get_max_num_iterations,libvl),vl_size,(Ptr{VlSvm},),self)
end

function vl_svm_get_diagnostic_frequency(self)
    ccall((:vl_svm_get_diagnostic_frequency,libvl),vl_size,(Ptr{VlSvm},),self)
end

function vl_svm_get_solver(self)
    ccall((:vl_svm_get_solver,libvl),VlSvmSolverType,(Ptr{VlSvm},),self)
end

function vl_svm_get_bias_multiplier(self)
    ccall((:vl_svm_get_bias_multiplier,libvl),Cdouble,(Ptr{VlSvm},),self)
end

function vl_svm_get_lambda(self)
    ccall((:vl_svm_get_lambda,libvl),Cdouble,(Ptr{VlSvm},),self)
end

function vl_svm_get_iteration_number(self)
    ccall((:vl_svm_get_iteration_number,libvl),vl_size,(Ptr{VlSvm},),self)
end

function vl_svm_get_scores(self)
    ccall((:vl_svm_get_scores,libvl),Ptr{Cdouble},(Ptr{VlSvm},),self)
end

function vl_svm_get_weights(self)
    ccall((:vl_svm_get_weights,libvl),Ptr{Cdouble},(Ptr{VlSvm},),self)
end

function vl_svm_set_epsilon(self,epsilon::Cdouble)
    ccall((:vl_svm_set_epsilon,libvl),Void,(Ptr{VlSvm},Cdouble),self,epsilon)
end

function vl_svm_set_bias_learning_rate(self,rate::Cdouble)
    ccall((:vl_svm_set_bias_learning_rate,libvl),Void,(Ptr{VlSvm},Cdouble),self,rate)
end

function vl_svm_set_max_num_iterations(self,maxNumIterations::vl_size)
    ccall((:vl_svm_set_max_num_iterations,libvl),Void,(Ptr{VlSvm},vl_size),self,maxNumIterations)
end

function vl_svm_set_diagnostic_frequency(self,f::vl_size)
    ccall((:vl_svm_set_diagnostic_frequency,libvl),Void,(Ptr{VlSvm},vl_size),self,f)
end

function vl_svm_set_bias_multiplier(self,b::Cdouble)
    ccall((:vl_svm_set_bias_multiplier,libvl),Void,(Ptr{VlSvm},Cdouble),self,b)
end

function vl_svm_set_model(self,model)
    ccall((:vl_svm_set_model,libvl),Void,(Ptr{VlSvm},Ptr{Cdouble}),self,model)
end

function vl_svm_set_bias(self,b::Cdouble)
    ccall((:vl_svm_set_bias,libvl),Void,(Ptr{VlSvm},Cdouble),self,b)
end

function vl_svm_set_iteration_number(self,n::vl_uindex)
    ccall((:vl_svm_set_iteration_number,libvl),Void,(Ptr{VlSvm},vl_uindex),self,n)
end

function vl_svm_set_weights(self,weights)
    ccall((:vl_svm_set_weights,libvl),Void,(Ptr{VlSvm},Ptr{Cdouble}),self,weights)
end

function vl_svm_set_diagnostic_function(self,f::VlSvmDiagnosticFunction,data)
    ccall((:vl_svm_set_diagnostic_function,libvl),Void,(Ptr{VlSvm},VlSvmDiagnosticFunction,Ptr{Void}),self,f,data)
end

function vl_svm_set_loss_function(self,f::VlSvmLossFunction)
    ccall((:vl_svm_set_loss_function,libvl),Void,(Ptr{VlSvm},VlSvmLossFunction),self,f)
end

function vl_svm_set_loss_derivative_function(self,f::VlSvmLossFunction)
    ccall((:vl_svm_set_loss_derivative_function,libvl),Void,(Ptr{VlSvm},VlSvmLossFunction),self,f)
end

function vl_svm_set_conjugate_loss_function(self,f::VlSvmLossFunction)
    ccall((:vl_svm_set_conjugate_loss_function,libvl),Void,(Ptr{VlSvm},VlSvmLossFunction),self,f)
end

function vl_svm_set_dca_update_function(self,f::VlSvmDcaUpdateFunction)
    ccall((:vl_svm_set_dca_update_function,libvl),Void,(Ptr{VlSvm},VlSvmDcaUpdateFunction),self,f)
end

function vl_svm_set_data_functions(self,inner::VlSvmInnerProductFunction,acc::VlSvmAccumulateFunction)
    ccall((:vl_svm_set_data_functions,libvl),Void,(Ptr{VlSvm},VlSvmInnerProductFunction,VlSvmAccumulateFunction),self,inner,acc)
end

function vl_svm_set_loss(self,loss::VlSvmLossType)
    ccall((:vl_svm_set_loss,libvl),Void,(Ptr{VlSvm},VlSvmLossType),self,loss)
end

function vl_svm_train(self)
    ccall((:vl_svm_train,libvl),Void,(Ptr{VlSvm},),self)
end

function vl_svm_hinge_loss(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_hinge_loss,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_hinge_loss_derivative(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_hinge_loss_derivative,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_hinge_conjugate_loss(label::Cdouble,u::Cdouble)
    ccall((:vl_svm_hinge_conjugate_loss,libvl),Cdouble,(Cdouble,Cdouble),label,u)
end

function vl_svm_hinge_dca_update(alpha::Cdouble,inner::Cdouble,norm2::Cdouble,label::Cdouble)
    ccall((:vl_svm_hinge_dca_update,libvl),Cdouble,(Cdouble,Cdouble,Cdouble,Cdouble),alpha,inner,norm2,label)
end

function vl_svm_hinge2_loss(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_hinge2_loss,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_hinge2_loss_derivative(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_hinge2_loss_derivative,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_hinge2_conjugate_loss(label::Cdouble,u::Cdouble)
    ccall((:vl_svm_hinge2_conjugate_loss,libvl),Cdouble,(Cdouble,Cdouble),label,u)
end

function vl_svm_hinge2_dca_update(alpha::Cdouble,inner::Cdouble,norm2::Cdouble,label::Cdouble)
    ccall((:vl_svm_hinge2_dca_update,libvl),Cdouble,(Cdouble,Cdouble,Cdouble,Cdouble),alpha,inner,norm2,label)
end

function vl_svm_l1_loss(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_l1_loss,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_l1_loss_derivative(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_l1_loss_derivative,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_l1_conjugate_loss(label::Cdouble,u::Cdouble)
    ccall((:vl_svm_l1_conjugate_loss,libvl),Cdouble,(Cdouble,Cdouble),label,u)
end

function vl_svm_l1_dca_update(alpha::Cdouble,inner::Cdouble,norm2::Cdouble,label::Cdouble)
    ccall((:vl_svm_l1_dca_update,libvl),Cdouble,(Cdouble,Cdouble,Cdouble,Cdouble),alpha,inner,norm2,label)
end

function vl_svm_l2_loss(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_l2_loss,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_l2_loss_derivative(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_l2_loss_derivative,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_l2_conjugate_loss(label::Cdouble,u::Cdouble)
    ccall((:vl_svm_l2_conjugate_loss,libvl),Cdouble,(Cdouble,Cdouble),label,u)
end

function vl_svm_l2_dca_update(alpha::Cdouble,inner::Cdouble,norm2::Cdouble,label::Cdouble)
    ccall((:vl_svm_l2_dca_update,libvl),Cdouble,(Cdouble,Cdouble,Cdouble,Cdouble),alpha,inner,norm2,label)
end

function vl_svm_logistic_loss(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_logistic_loss,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_logistic_loss_derivative(label::Cdouble,inner::Cdouble)
    ccall((:vl_svm_logistic_loss_derivative,libvl),Cdouble,(Cdouble,Cdouble),label,inner)
end

function vl_svm_logistic_conjugate_loss(label::Cdouble,u::Cdouble)
    ccall((:vl_svm_logistic_conjugate_loss,libvl),Cdouble,(Cdouble,Cdouble),label,u)
end

function vl_svm_logistic_dca_update(alpha::Cdouble,inner::Cdouble,norm2::Cdouble,label::Cdouble)
    ccall((:vl_svm_logistic_dca_update,libvl),Cdouble,(Cdouble,Cdouble,Cdouble,Cdouble),alpha,inner,norm2,label)
end
