#' Creat file
#'
#' @param path path for a file
#'
#' @return file
#' @export
#'

creat_file <- function(path){
  file.create(path)
  file.edit(path)
}



#' Charger des csv2
#'
#' @param path chemin du fichier pour csv2
#'
#' @return list
#' @export
#'

charger_csv <- function(path){
  # browser()
  fichier <- list.files(path,full.names = TRUE,pattern = ".csv")
  names_fichier <- stringr::str_match(pattern = "([:alnum:]+).csv$",fichier)
  names_fichier <- names_fichier[,2]
  mes_fichiers <- list()
  for(i in fichier){
    mes_fichiers[[i]] <- read_csv2(i)
  }
  mes_fichiers <- setNames(mes_fichiers,names_fichier)
  mes_fichiers
}


