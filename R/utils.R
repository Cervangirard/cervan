#' Creat file
#'
#' @param path path for a file
#'
#' @return file
#' @export
#'
#' @importFrom stats setNames
#' @importFrom utils file.edit
#'

create_file <- function(path){
  file.create(path)
  file.edit(path)
}


#' Doc and reload
#'
#' @param package path of pkg
#'
#' @importFrom devtools document
#' @importFrom pkgload load_all

load_pkg <- function(package = "."){
  document(pkg = package)
  load_all(path = package)
}
