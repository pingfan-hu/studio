# Force installation from GitHub main branch (v0.1.5+)
# Connect Cloud caches v0.1.4, so we must force install from GitHub

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Install sdstudio from GitHub if version is too old
current_version <- tryCatch(
  as.character(packageVersion("sdstudio")),
  error = function(e) "0.0.0"
)

if (compareVersion(current_version, "0.1.5") < 0) {
  message("Installing sdstudio v0.1.5+ from GitHub...")
  remotes::install_github(
    "surveydown-dev/sdstudio",
    upgrade = "never",
    force = FALSE
  )
}

library(sdstudio)
sdstudio::launch()
