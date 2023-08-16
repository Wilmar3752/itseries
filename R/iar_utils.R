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

calc_w_fit <- function(x, phi) {
  n <- nrow(x)
  w <- c()
  sigma <- calc_sigma(x, phi)
  delta_n <- diff(x$t_n)
  var <- (sigma) / (1 - phi^2)
  w[1] <- var
  w[2:n] <- var * (1 - sign(phi)^(2) * abs(phi)^(2 * delta_n))
  return(w)
}

calc_sigma <- function(x, phi) {
  x_hat <- calc_xhat(x, phi)
  delta_n <- diff(x$t_n)
  n <- nrow(x)
  k <- (1 - phi^2) / n
  e <- x$x - x_hat
  sigma <- k * e[1]^2 + k * sum(e[2:n]^2 / (1 - (phi^2)^(delta_n)))
  return(sigma)
}

calc_xhat <- function(x, phi) {
  n <- nrow(x)
  x_hat <- c()
  delta_n <- diff(x$t_n)
  x_hat[1] <- 0
  x_hat[2:n] <- sign(phi) * abs(phi)^(delta_n) * x$x[1:(n - 1)]
  return(x_hat)
}