# Force installation from online-deployment branch
# Connect Cloud caches packages, so we must force install from GitHub
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
