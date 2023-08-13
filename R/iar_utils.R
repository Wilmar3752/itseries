calc_phi_n <- function(phi, delta_n) {
  phi_n <- sign(phi) * abs(phi)^delta_n
  return(phi_n)
}

calc_w <- function(delta_n, phi, sigma) {
  n <- length(delta_n) + 1
  w <- c()
  var <- (sigma^2) / (1 - phi^2)
  w[1] <- var
  w[2:n] <- var * (1 - sign(phi)^(2) * abs(phi)^(2 * delta_n))
  return(w)
}