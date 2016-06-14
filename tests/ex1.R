# devtools::install_github("ronkeizer/PKPDsimShiny")
library(PKPDsim)
library(PKPDsimShiny)

p <- list(CL = 1, V  = 10, KA = 0.5)
pk1 <- new_ode_model("pk_1cmt_oral")
r1 <- new_regimen(amt = 100,
                  n = 5,
                  interval = 12)

n <- 100
omega <- c(0.1,
           0.05, 0.1)

# simulation in a Shiny app
PKPDsimShiny::sim_ode_shiny (
  ode = pk1,
  par = p,
  n_ind = n,
  omega = omega,
  regimen = r1)
