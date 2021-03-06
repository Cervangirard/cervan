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
      path_file <- "devstuff_hisotry.R"
    } else{
      path_file <- file.path(path_dir, "devstuff_hisotry.R")
    }
  } else{
    path_file <- "devstuff_hisotry.R"
  }

  if(file.exists(path_file)){
    stop("File devstuff.R already exists. :)")
  }
  cat(
"# File to dev your packages
# Run this code ton ignore this file
usethis::use_build_ignore('devstuff.R')",
    file = path_file
  )
  if (isAvailable()) {
  navigateToFile(path_file)
    }
}
