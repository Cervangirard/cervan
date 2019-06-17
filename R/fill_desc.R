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
#' @importFrom golem fill_desc
cervan_desc <- function(name_pkg,title_pkg, desc_pkg, mail_pro = TRUE, repo_git = NULL){
  if (mail_pro){
    mail <- "cervan@thinkr.fr"
  }else{
    mail <- "cervan.girard@gmail.com"
  }

  fill_desc(
    pkg_name = name_pkg, # The Name of the package containing the App
    pkg_title = title_pkg, # The Title of the package containing the App
    pkg_description = desc_pkg, # The Description of the package containing the App
    author_first_name = "Cervan", # Your First Name
    author_last_name = "Girard",  # Your Last Name
    author_email = mail,      # Your Email
    repo_url = repo_git # The (optional) URL of the GitHub Repo
  )
}
