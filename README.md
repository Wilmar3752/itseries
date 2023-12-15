# itseries
R package for Irregular Time Series, here is an basic use case

## Install the Package from GitHub
``` R
library(devtools)
devtools::install_github("Wilmar3752/itseries") ## Install from github
library(itseries)
```

## Simlulate Random Sample
``` R

delta_n <- 1+rexp(100, rate = 2)  ## Simulate irregular Delta_n
t_n <- diffinv(delta_n, xi = 1) ## Get tick times from delta_n
sim_data <- iar_sim(t_n, phi = -0.3)
plot_its(sim_data$x, sim_data$t_n)

```
## Fit the MLE for te IAR model
``` R
iar_mle(par = 0, data = sim_data, hessian = TRUE)
```
