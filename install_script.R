
install.packages(c(
	"rmarkdown", "ape", "epicontacts", "epitrix", "readxl", "tidyverse",
	"remotes", "outbreaker2", "furrr", "coda", "o2ools", "mixtree",
	"parallel", "EpiEstim", "incidence", "ggpubr", "igraph", "tidygraph",
	"ggraph", "incidence2"
))

# somewhat lagging versions of these are also available from CRAN
install.packages("epiparameter", repos = c("https://epiverse-trace.r-universe.dev", "https://cloud.r-project.org"))
install.packages(
  "https://github.com/reconhub/distcrete/archive/refs/heads/main.tar.gz",
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