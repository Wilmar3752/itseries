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
