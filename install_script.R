
# for general installation advice feel free to post on the discussion forums to request troubleshooting
# help.

# for this particular library, `sodium`, you may need to install `libsodium` manually. first try:
install.packages("sodium")
# if that doesn't work, you can manually install the library:
# - on unix systems, use apt, snap, etc to find libsodium and install the dev version
# - for Windows / OSX, see https://py-ipv8.readthedocs.io/en/latest/preliminaries/install_libsodium.html

install.packages(c(
  "rmarkdown", "ape", "epicontacts", "epitrix", "readxl", "tidyverse",
  "outbreaker2", "furrr", "coda", "o2ools", "mixtree",
  "EpiEstim", "incidence", "ggpubr", "igraph", "tidygraph",
  "ggraph", "incidence2", "remotes"
))

# somewhat lagging versions of these are also available from CRAN
# but we're going to install the latest versions from Github
# you can expect to be prompted about updating dependencies, so you may need
# to provide an interactive answer
remotes::install_github("epiverse-trace/epiparameter")
remotes::install_github("reconhub/distcrete")

# these are not available on CRAN; again, you may be prompted about installing
# dependencies
remotes::install_github("mrc-ide/epireview")
remotes::install_github("CyGei/linktree")
