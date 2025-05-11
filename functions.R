#' Obtain a summary of the posterior curves
#'
#' This function takes a list of matrices containing posterior samples of curves and returns a summary of the posterior curves.
#'
#' @param Y_hat_list A list of length n, where each element is a matrix containing the posterior samples of a curve. Each matrix has dimensions num_posterior_samples x num_sampling_points.
#' @param level The confidence level for the posterior intervals (default is 0.95).
#' @param num_para The number of parallel processes to use (default is 10).
#' @return A list of four lists, each of length n, where each element is a posterior summary curve.
#' @export
get_curve_summary = function(Y_hat_list, level = 0.95, num_para = 10){
    n = length(Y_hat_list)
    num_mcmc = dim(Y_hat_list[[1]])[2]
    cl <- makeCluster(num_para) #not to overload your computer
    registerDoParallel(cl)
    y_hat_mean = foreach(i=1:n) %dopar%{apply(Y_hat_list[[i]],1,mean)}
    y_hat_median = foreach(i=1:n) %dopar%{apply(Y_hat_list[[i]],1,median)}
    y_hat_upper = foreach(i=1:n) %dopar%{apply(Y_hat_list[[i]],1,quantile, probs = 1-(1-level)/2)}
    y_hat_lower = foreach(i=1:n) %dopar%{apply(Y_hat_list[[i]],1,quantile, probs = (1-level)/2)}
    stopCluster(cl)
    
    return(list(y_hat_mean = y_hat_mean, 
                y_hat_median = y_hat_median,
                    y_hat_upper = y_hat_upper, 
                    y_hat_lower = y_hat_lower) )
}