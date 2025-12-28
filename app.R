# Force installation from online-deployment branch
# Connect Cloud caches packages, so we must force install from GitHub

# Set CRAN mirror for Connect Cloud
options(repos = c(CRAN = "https://cloud.r-project.org"))

if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

devtools::install_github(
  "surveydown-dev/sdstudio",
  ref = "online-deployment",
  force = TRUE,
  upgrade = "never"
)

library(sdstudio)
sdstudio::launch()
