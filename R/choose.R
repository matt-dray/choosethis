#' Start Your Adventure
#'
#' @return Nothing.
#'
#' @examples question()
#'
#' @export
begin <- function() {

  cli::cli_text("You reach a fork in the road.")

  if (choosethis_opts()$show_links) {
    cli::cli_text("* Go {.run [left](choosethis::left())}")
    cli::cli_text("* Go {.run [right](choosethis::right())}")
  }

  if (!choosethis_opts()$show_links) {
    cli::cli_text("* Go left [choosethis::left()]")
    cli::cli_text("* Go right [choosethis::right()]")
    cli::cli_text("Copy-paste the code for your option into the console.")
  }

}

#' Go Left
#'
#' @return Nothing
#'
#' @examples left()
#'
#' @export
left <- function() {
  cli::cli_text("You win!")
}

#' Go Right
#'
#' @return Nothing
#'
#' @examples right()
#'
#' @export
right <- function() {
  cli::cli_text("You died.")
}
