
# 1. load the UK covid data, as in lab_1.qmd, but this time do not filter it by date

covid19_eng_case_data <- outbreaks::covid19_england_nhscalls_2020

# 2. use `{incidence2}` to aggregate to daily counts

uk_incidence <- incidence2::incidence(
  covid19_eng_case_data,
  date_index = "date",
  interval = "day"
)

# 3. Plot the data in way that you can identify two distinct periods,
# one of decline and one of growth

ggplot(uk_incidence) + aes(date_index, count) +
  geom_line() +
  scale_y_continuous(trans = "log2")

# 4. Extract those periods, then use `{i2extras}` to calculate growth during each

uk_decline <- uk_incidence |> subset(dplyr::between(date_index, as.Date("2020-05-01"), as.Date("2020-07-01")))

uk_growth <- uk_incidence |> subset(date_index > as.Date("2020-08-01"))

fitted_curve_decline <-
  i2extras::fit_curve(
    uk_decline,
    model = "negbin",
    alpha = 0.05
  ) |> i2extras::growth_rate()

fitted_curve_growth <-
  i2extras::fit_curve(
    uk_growth,
    model = "negbin",
    alpha = 0.05
  ) |> i2extras::growth_rate()
