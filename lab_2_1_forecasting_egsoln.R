
# 1. load the ebola1976 data from the `{cfr}` package, as in lab_2.qmd, but redefine cases column as `primary` and deaths column as `secondary`.

library(cfr)
data("ebola1976")

names(ebola1976)[2:3] <- c("primary", "secondary")

ebola_early <- subset(ebola1976, date <= as.Date("1976-10-01"))

# 2. EpiNow2 has the capability to `estimate_secondary`;
# investigate its use, then apply it to the the Ebola data through Oct 1

est <- EpiNow2::estimate_secondary(ebola_early)

# 3. Use that estimate with the `forecast_secondary` capability, now providing the rest of the primary series

ebola_cases <- within(subset(ebola1976, date > as.Date("1976-10-01")), { value <- primary })

forecast <- EpiNow2::forecast_secondary(est, ebola_cases)

plot(forecast, new_obs = ebola_cases, from = "1976-10-01")

# Hint: consult the examples from ?EpiNow2::estimate_secondary