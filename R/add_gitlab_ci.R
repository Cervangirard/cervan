#' Add gitlab-ci.yml
#'
#' @importFrom usethis use_build_ignore
#' @export
#'
add_gitlab_ci <- function(){
  cat(
"image: rocker/tidyverse

test:
  script:
    - R -e 'devtools::install_deps(dependencies = TRUE)'
    - R CMD build . --no-build-vignettes --no-manual
    - R CMD check *tar.gz --no-build-vignettes --no-manual",
file = ".gitlab-ci.yml"
  )

  use_build_ignore(".gitlab-ci.yml")
}
