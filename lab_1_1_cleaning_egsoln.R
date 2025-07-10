
# 1. load the raw_ebola_data, as in lab_1.qmd

raw_ebola_data <- here::here("data", "simulated_ebola.csv") |>
  rio::import() |>
  dplyr::as_tibble()
raw_ebola_data

# 2. using `{cleanepi}` clean up the data enough to:
#   - calculate the distribution of times from onset to sample ...
#   - for females over age 20 ...
#   - including where onset to sample is negative

# hint: think what data are needed and what cleaning steps are necessary

gender_dict <- data.frame(
  options = c("1", "m", "M", "male", "2", "f", "F", "female"),
  values = c(rep("male", 4), rep("female", 4)),
  grp = "gender"
)

clean_ebola_data <- raw_ebola_data |>
  cleanepi::standardize_column_names() |>
  cleanepi::standardize_dates() |>
  cleanepi::convert_to_numeric("age") |>
  cleanepi::clean_using_dictionary(gender_dict) |>
  cleanepi::remove_duplicates()

# 3. perform the calculation and make a simple plot!

library(ggplot2)

(clean_ebola_data |> subset(gender == "female" & age > 20) |> ggplot()) +
  aes(x = as.integer(date_sample - date_onset)) +
  geom_histogram(binwidth = 1) +
  scale_y_log10() +
  theme_minimal()

# 4. BONUS: identify the unlikely values, systematically correct or exclude them, and make a new plot