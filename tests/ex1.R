Sys.setenv("R_TESTS" = "")
# devtools::install_github("ronkeizer/PKPDsimShiny")
library(PKPDsim)
library(PKPDsimShiny)

p <- list(CL = 1, V  = 10, KA = 0.5)
pk1 <- new_ode_model(model = "pk_1cmt_oral")
r1 <- new_regimen(amt = 100,
                  n = 5,
                  interval = 12)

# regular simulation into a dataset
dat <- sim_ode (ode = "pk1",
                par = p,
                regimen = r1)

# simulation in a Shiny app
# sim_ode_shiny (ode = pk1,
#                par = p,
#                omega = c(0.1,
#                          0.05, 0.1),
#                regimen = r1)
