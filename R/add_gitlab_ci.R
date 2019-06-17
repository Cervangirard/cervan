#' Add gitlab-ci.yml
#'
#' @importFrom usethis use_build_ignore
#' @export
#'
add_gitlab_ci <- function(){
  cat(
"image: r-base

test:
  script:
    - R -e \"install.packages('devtools')\"
    - R -e 'devtools::install_deps(dependencies = TRUE)'
    - R CMD build . --no-build-vignettes --no-manual
    - R CMD check *tar.gz --no-build-vignettes --no-manual",
file = ".gitlab-ci.yml"
  )

  use_build_ignore(".gitlab-ci.yml")
}
