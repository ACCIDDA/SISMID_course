
# prior to installing this, you will need to install `libsodium`
# on unix systems, use apt, snap, etc to find libsodium and install
# the dev version
# for Windows / OSX, see https://py-ipv8.readthedocs.io/en/latest/preliminaries/install_libsodium.html
# for installation advice
# feel free to post on the discussion forums to request troubleshooting
# help
install.packages("sodium")

install.packages("Matrix")

install.packages(c(
	"rmarkdown", "ape", "epicontacts", "epitrix", "readxl", "tidyverse",
	"remotes", "outbreaker2", "furrr", "coda", "o2ools", "mixtree",
	"EpiEstim", "incidence", "ggpubr", "igraph", "tidygraph",
	"ggraph", "incidence2"
))

# somewhat lagging versions of these are also available from CRAN
remotes::install_github("epiverse-trace/epiparameter")
remotes::install_github("reconhub/distcrete")

# not available on CRAN
remotes::install_github("mrc-ide/epireview")
remotes::install_github("CyGei/linktree")