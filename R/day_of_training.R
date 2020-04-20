#' Add Training
#'
#' @param name_tranning name of training
#' @param day which day
#' @param token token toggl
#'
#' @importFrom lubridate ymd_hms
#' @importFrom togglr get_project_id toggl_create
#'
#' @export

day_of_training <- function(name_tranning, day, token = Sys.getenv("TOGGL_TOKEN")) {
  message("Find your training...")

  id_project <- find_your_training(name_tranning, token)

  message("Insert your training")
  message(".")
  message("..")
  message("...")

  start <- paste(day, " 09:00:00")
  end <- paste(day, " 16:00:00")
  suppressWarnings(
    toggl_create(
    description = "Formation",
    pid = id_project,
    start = ymd_hms(start, tz = "Europe/Paris"),
    stop = ymd_hms(end, tz = "Europe/Paris"),
    tags = "Formation",
    api_token = token
  ))
  message("Done !")
}

#' Find the goog formation
#'
#' @param name_training name of training
#' @param token token to toggl
#'
#' @importFrom togglr get_all_project_names get_project_id
#' @importFrom utils menu

find_your_training <- function(name_training, token) {

  formation <- get_all_project_names(api_token = token)

  formation <- formation[grepl(pattern = "form_",
                               x = formation)]

  if (!name_training %in% formation) {
    message("We don't find your training")

    formation <- c(formation,
                   "Nope")

    choice <- menu(formation,
                   "Find it in this list ?")

    name_training <- formation[choice]

    if (name_training == "Nope") {
      stop('Use `togglr::toggl_create_project`')
    }
  }
    get_project_id(project_name = name_training,
                   api_token = token)
}
