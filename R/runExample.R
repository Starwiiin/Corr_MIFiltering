#' This function runs the shiny app for MIfiltering
#' @export
runExample <- function() {
  appDir <- system.file("shiny-examples", "myapp",
                        package = "mypackage")
  if (appDir == "") {
    stop(paste0("Could not find example directory. ",
                "Try re-installing `mypackage`."), call. = FALSE)
  }
  # the first app will be called
  shiny::runApp(appDir[1], display.mode = "normal")
}
