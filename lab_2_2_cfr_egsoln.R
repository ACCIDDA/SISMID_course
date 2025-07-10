
# 1. load the data/sarscov2_cases_deaths.csv

sc2 <- rio::import(here::here("data", "sarscov2_cases_deaths.csv"))

# 2. As in lab_2.qmd, calculate the rolling naive and adjusted CFRs for SARS-COV-2 (hint: you may need to adjust some column names).
# For the onset to death distribution, use the values from Verity et al: https://www.medrxiv.org/content/10.1101/2020.03.09.20033357v1

names(sc2)[2:3] <- c("cases", "deaths")

pars <- epiparameter::convert_summary_stats_to_params(
  "gamma", mean = 18.8, cv = 0.45
)

onset_to_death_sc2 <- epiparameter::epiparameter(
  "COVID-19", epi_name = "onset to death",
  prob_distribution = epiparameter::create_prob_distribution(
    "gamma", unlist(pars)
  )
)

rolling_cfr_naive <- cfr::cfr_rolling(data = sc2)
rolling_cfr_adjusted <- cfr::cfr_rolling(
  data = sc2,
  delay_density = function(x) density(onset_to_death_sc2, x)
)

# 3. Plot them!

library(ggplot2)

dplyr::bind_rows(
  list(
    naive = rolling_cfr_naive,
    adjusted = rolling_cfr_adjusted
  ),
  .id = "method"
) |>
  ggplot() +
  geom_ribbon(
    aes(
      date,
      ymin = severity_low,
      ymax = severity_high,
      fill = method
    ),
    alpha = 0.2, show.legend = FALSE
  ) +
  geom_line(
    aes(date, severity_estimate, colour = method)
  )
