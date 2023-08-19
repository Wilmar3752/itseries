#' Simulate a time series using the Irregular Autoregressive (IAR) model
#'
#' This function generates a simulated time series using the IAR model.
#'
#' @param t_n A vector representing the time points.
#' @param phi The autoregressive parameter. Default is 0.7.
#' @param sigma The standard deviation of the error term. Default is 1.
#'
#' @return A data frame containing the simulated time series values and corresponding time points.
#'
#' @examples
#' t_n <- 1:10
#' sim_data <- iar.sim(t_n)
#' 
#' @importFrom stats rnorm
#' @export
#'
#' @keywords time series, simulation, IAR model
iar.sim <- function(t_n, phi = 0.7, sigma = 1) {
  n_sim <- length(t_n)
  e <- rnorm(n_sim)
  x <- rep(0, n_sim)

  delta_n <- diff(t_n)
  phi_n <- calc_phi_n(phi, delta_n)
  w_n <- calc_w(delta_n, phi, sigma)
  for (t in 1:n_sim){
    if (t == 1) {
      x[t] <- sqrt(w_n[t]) * e[t]
    } else {
      x[t] <- phi_n[t - 1] * x[t - 1] +
        sqrt(w_n[t]) * e[t]
    }
  }
  return(data.frame(cbind(x, t_n)))
}
