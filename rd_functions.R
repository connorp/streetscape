## Streetscape Changes
## Connor P. Jackson -- cpjackson@berkeley.edu
## Regression Discontinuity functions

library(rdrobust)
# library(rdlocrand)
library(rddensity)
# library(rdmulti)
# library(rdpower)
library(ggplot2)

## ---- score-density-plots-tests ----

# quadratic polynomial approximated density estimator
# cubic polynomial approximated bias-corrected density estimator (for CIs)
# triangular kernel
# bandwidth (h) chosen by rdbwdensity(), separately left and right of the cutoff
density_tests <- function(scores_norm, title) {
  density_est <- rddensity(scores_norm, c=0, bwselect="each", binoWStep=0.5)
  density_plot <- rdplotdensity(density_est, scores_norm, type="both", 
                                histFillShade=0.4, plotGrid="qs", printPlot=FALSE,
                                xlabel="Normalized Score",
                                ylabel="Density",
                                title=title)
  return(list(density_obj=density_est, density_plot=density_plot, round=title))
}

get_plot <- function(obj) {
  return(obj$density_plot$Estplot)
}

extract_mccrary <- function(obj) {
  test <- obj$density_obj$test
  return(c(round=obj$round, tstat=round(test$t_jk, 4), pval=round(test$p_jk, 4)))
}

bino_tests <- function(dens_obj) {
  bino_dt <- as.data.table(data.frame(dens_obj$density_obj$bino))
  return(bino_dt[, .(round=dens_obj$round, window_halfwidth=LeftWindow, LeftN, RightN, pval)])
}

## ---- balance-tables ----

balance_cols <- c("cost", "award_req", "any_bike_improv", "bike_lanes", 
                  "bike_intersect", "any_ped_improv", "sidewalk", "ped_intersect", 
                  "ped_curbcut", "any_veh_calming")
balance_col_names <- c("Project Cost ($1000)", "ATP Award Requested ($1000)", "Any Bike Improvements",
                       "Lane-Feet of Bike Lane Added", "Improves Intersections/Crossing for Bikes",
                       "Any Pedestrian Improvements", "Improves or Adds Sidewalks", 
                       "Improves Intersections/Crossings for Pedestrians", 
                       "Adds Curbcuts or Accessibility Improvements",
                       "Any Vehicle Traffic Calming Improvements")

balance_table <- function(data, cols, col_names, treatment_var, 
                          group_names=c("Below Cutoff", "Above Cutoff")) {
  bal_means_full <- data[, lapply(.SD, mean), keyby=treatment_var, .SDcols=cols]
  treatment_var_vector <- data[, ..treatment_var][[1]]
  full_bal_t_tests <- data[, lapply(.SD, function(X) t.test(X ~ treatment_var_vector)$statistic), 
                           .SDcols=balance_cols]
  full_bal <- data.frame(merge(as.data.frame(t(bal_means_full)), as.data.frame(t(full_bal_t_tests)), 
                               by="row.names", all=TRUE),
                         row.names = "Row.names")
  colnames(full_bal) <- c(group_names, "t-statistic")
  full_bal <- full_bal[row.names(full_bal) != "funded_statewide", ][cols, ]
  
  countrow <- data.frame(t(data[, .N, keyby=treatment_var]), `t-statistic`=NA)["N", ]
  colnames(countrow) <- c(group_names, "t-statistic")
  rownames(full_bal) <- col_names
  return(rbind(round(full_bal, 3), countrow))
}

## ---- treatment-probability ----

treatment_prob_plot <- function(scores_norm, treated, title) {
  treatment_plot <- rdplot(treated, scores_norm, p=3, binselect="qspr", hide=TRUE,
                           x.label="Statewide Score (normalized)", 
                           y.label="Funding Probability",
                           title=title)
  return(treatment_plot$rdplot)
}
