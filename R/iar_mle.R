q#' Perform Maximum Likelihood Estimation for the Infinite Autoregressive (IAR) model
#'
#' This function performs maximum likelihood estimation for the IAR model using the specified likelihood function and optimization method.
#'
#' @param par The initial parameter value for optimization. Default is 0.
#' @param fn The likelihood function to be optimized. Default is `iar_loglik`.
#' @param data The input data for the likelihood function.
#' @param hessian A logical value indicating whether to compute the Hessian matrix. Default is TRUE.
#' @param method The optimization method to be used. Default is "Brent".
#'
#' @return The optimized parameter values.
#'
#' @examples
#' data <- c(1, 2, 3, 4, 5)
#' optimized_params <- iar.mle(data = data)
#' 
#' @importFrom stats optim
#' @export
#'
#' @keywords maximum likelihood estimation, IAR model, optimization
iar.mle <- function(par = 0,
                    fn = iar_loglik, data,
                    hessian = TRUE,
                    method = "Brent") {
    p <-  optim(par = par,
          fn = fn, x = data,
          hessian = hessian,
          method = "Brent", lower = -0.99, upper = 0.99)
    par <- p$par
    return(par)
}