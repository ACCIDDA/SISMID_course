
# for general installation advice feel free to post on the discussion forums to request troubleshooting
# help.

# for this particular library, `sodium`, you may need to install `libsodium` manually. first try:
install.packages("sodium")
# if that doesn't work, you can manually install the library:
# - on unix systems, use apt, snap, etc to find libsodium and install the dev version
# - for Windows / OSX, see https://py-ipv8.readthedocs.io/en/latest/preliminaries/install_libsodium.html

# for this library, `RLumShiny`, you may need to install some libraries
# for one of its dependencies `terra` associated with geospatial tools
# see https://rspatial.github.io/terra/#installation
install.packages("RLumShiny")

install.packages(c(
  "rmarkdown", "ape", "epicontacts", "epitrix", "readxl", "tidyverse",
  "outbreaker2", "furrr", "coda", "o2ools", "mixtree",
  "EpiEstim", "ggpubr", "igraph", "tidygraph",
  "ggraph", "incidence2"
))

# somewhat lagging versions of these are also available from CRAN
install.packages("epiparameter", repos = c("https://epiverse-trace.r-universe.dev", "https://cloud.r-project.org"))
install.packages(
  "https://github.com/reconhub/distcrete/archive/refs/heads/master.tar.gz",
  repos = NULL,
  type = "source"
)

# not available on CRAN
#epireview
install.packages(
  "https://github.com/mrc-ide/epireview/archive/refs/heads/main.tar.gz",
  repos = NULL,
  type = "source"
)
#linktree
install.packages(
  "https://github.com/CyGei/linktree/archive/refs/heads/main.tar.gz",
  repos = NULL,
  type = "source"
)
