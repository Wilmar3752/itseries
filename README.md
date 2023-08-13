# itseries
R package for Irregular Time Series, here is an basic use case


``` R
library(devtools)
devtools::install_github("Wilmar3752/itseries") ## Install from github
library(itseries)

delta_n <- 1+rexp(100, rate = 2)  ## Simulate irregular Delta_n
t_n <- diffinv(delta_n, xi = 1) ## Get tick times from delta_n
sim_data <- iar.sim(t_n, phi = -0.3)
plot.its(sim_data$x, sim_data$t_n)

```