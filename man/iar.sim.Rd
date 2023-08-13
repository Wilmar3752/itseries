\name{iar.sim}
\alias{iar.sim}
\title{Simulate an IAR(1) process}
\description{
  Simulates an IAR(1) process with specified parameters.
}
\usage{
  iar.sim(n_sim, t_n, phi = 0.7, sigma = 1)
}
\arguments{
  \item{n_sim}{Number of simulations to generate.}
  \item{t_n}{Vector of time points.}
  \item{phi}{Autoregressive parameter. Default is 0.7.}
  \item{sigma}{Standard deviation of the error term. Default is 1.}
}
\details{
  The function simulates an IAR(1) process using the specified parameters. It generates a vector of simulated values for the process at the given time points.
}
\value{
  A data frame with two columns: 'x' (simulated values) and 't_n' (time points).
}
\examples{
    delta_n <- 1 + rexp(100) ## Generate delta_n random
    t_n <- diffinv(t_n, xi = 1) ## Calculate t_n based on random delta_n
    data  <- iar.sim(t_n, phi = -0.7)
    plot.its(data$x, data$t_n)
}