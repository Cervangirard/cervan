#' Add description
#'
#' @param name_pkg Name of the package
#' @param title_pkg Title of the package
#' @param desc_pkg Desc of the package
#' @param mail_pro mail pro ou perso
#' @param repo_git URL repos gil
#'
#' @export
#'
#' @importFrom pkgload pkg_name
#' @import desc
#'
cervan_desc <- function(name_pkg = pkg_name(),title_pkg, desc_pkg, mail_pro = TRUE, repo_git = NULL){
  if (mail_pro){
    mail <- "cervan@thinkr.fr"
  }else{
    mail <- "cervan.girard@gmail.com"
  }
  desc <- description$new()
  desc$set(Package = name_pkg,
           Title = title_pkg,
           Description = desc_pkg)
  desc$add_author("Cervan", "Girard", email = mail)
  if(!is.null(repo_git)){
  desc$set("URL", repo_git)
  }
}
