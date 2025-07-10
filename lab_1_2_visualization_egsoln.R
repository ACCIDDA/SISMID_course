
# 1. create a synthetic line list, sim_data, as in lab_1.qmd

set.seed(42) # Set seed for reproducibility
sim_data <- simulist::sim_linelist(outbreak_size = c(1000, 1500)) |>
  dplyr::as_tibble() # for a simple data frame output

# 2. Aggregate `sim_data` by admission date, case outcome, and sex in 2-week windows (i.e. biweekly)

biweekly_incidence <- incidence2::incidence(sim_data,
  date_index = "date_admission",
  groups = c("outcome", "sex"),
  interval = 14,
  complete_dates = TRUE
)

# 3. Plot the biweekly incidence, faceted by outcome, and distinguishing by sex within panels

plot(biweekly_incidence, fill = "sex")

# 4 BONUS: Polish up the plot; e.g. make the date break grid on months, relabel axes














# 3. perform the calculation and make a simple plot!









# 4. BONUS: identify the unlikely values, systematically correct or exclude them, and make a new plot