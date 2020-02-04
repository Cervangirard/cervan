#' Creat file
#'
#' @param path path for a file
#'
#' @return file
#' @export
#'
#' @importFrom utils file.edit
#' @importFrom rstudioapi isAvailable navigateToFile
#'

create_file <- function(path){
  file.create(path)
  if (isAvailable()) {
    navigateToFile(path)
  }
}


