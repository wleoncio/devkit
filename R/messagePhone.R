#' Sends message to Android phone
#'
#' @param title Title of message
#' @param message Body of message
#' @param user Pushover user ID
#' @param app Pushover R application ID
#' @param include_name Add machine name to the message
#' @return an invisible list. Check the documentation for pushoverr::pushover
#'   for more information.
#' @importFrom pushoverr pushover
#' @export
messagePhone <- function(user,
                         app,
                         title = "R script finished",
                         message = "I'm done! :)",
                         include_name = TRUE) {
  if (include_name) {
    machine_name <- system('uname -n',intern = TRUE)
    message <- paste(machine_name, message)
  }
  try({pushoverr::pushover(message, title, user = user, app  = app)})
}
