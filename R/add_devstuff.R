#' devstuff.R file
#'
#' @importFrom rstudioapi isAvailable getActiveProject navigateToFile
#' @return devstuff.R
#'
#' @export
#'
#' @examples
#' add_devstuff()
add_devstuff <- function() {
  if (isAvailable()) {
    path_dir <- rstudioapi::getActiveProject()
    if (is.null(path_dir)) {
      path_file <- "devstuff.R"
    } else{
      path_file <- file.path(path_dir, "devstuff.R")
    }
  } else{
    path_file <- "devstuff.R"
  }
  cat(
    "# File to dev your packages
    # Run this code ton ignore this file
    usethis::use_build_ignore('devstuff.R')",
    file = path_file
  )
  file.edit(path_file)

}
