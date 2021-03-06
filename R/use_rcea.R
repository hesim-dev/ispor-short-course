#' Use the `rcea` course materials
#'
#' Add the `R` scripts that contain the code for the tutorials in the 
#' `rcea` package to the directory specified by `path`.
#' 
#' @param path The path of the directory to put the course materials in. 
#' @examples 
#'\dontrun{
#' usethis::create_project("~/Projects/rcea-exercises")
#' add_rcea("~/Projects/rcea-exercises")
#' }
#' @export
use_rcea <- function(path = ".") {
  fnames <- list.files(system.file("vignettes-R", package = "rcea"))
  fpath_to <- paste0(path, "/")
  
  for (i in 1:length(fnames)) {
    fpath_from <- system.file("vignettes-R", fnames[i], package = "rcea")
    file.copy(fpath_from, paste0(fpath_to, fnames[i]))
  }
}