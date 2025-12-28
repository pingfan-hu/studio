# Force installation from online-deployment branch
# Connect Cloud caches packages, so we must force install from GitHub

# Set CRAN mirror (needed to install devtools if not already available)
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Check if devtools is available, install if needed
if (!requireNamespace("devtools", quietly = TRUE)) {
  message("Installing devtools from CRAN...")
  install.packages("devtools", quiet = FALSE)
} else {
  message("devtools already available")
}

# Install sdstudio from the online-deployment branch
message(
  "Installing sdstudio from GitHub (surveydown-dev/sdstudio@online-deployment)..."
)
devtools::install_github(
  "surveydown-dev/sdstudio",
  ref = "online-deployment",
  force = TRUE,
  upgrade = "never",
  quiet = FALSE
)
message("✓ sdstudio installation complete")

library(sdstudio)
message("✓ Launching sdstudio...")
sdstudio::launch()
