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


#' Doc and reload
#'
#' @param package path of pkg
#'
#' @export
#'
#' @importFrom devtools document
#' @importFrom pkgload load_all

load_pkg <- function(package = "."){
  document(pkg = package)
  load_all(path = package)
}
