
install.packages(c(
	"rmarkdown", "ape", "epicontacts", "epitrix", "readxl", "tidyverse",
	"remotes", "outbreaker2", "furrr", "coda", "o2ools", "mixtree",
	"parallel", "EpiEstim", "incidence", "ggpubr", "igraph", "tidygraph",
	"ggraph", "incidence2"
))

# somewhat lagging versions of these are also available from CRAN
remotes::install_github("epiverse-trace/epiparameter")
remotes::install_github("reconhub/distcrete")

# not available on CRAN
remotes::install_github("mrc-ide/epireview")
remotes::install_github("CyGei/linktree")