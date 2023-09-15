#' Start Your Adventure
#'
#' @param show_links Logical. Present clickable links in the R console?
#'     Defaults to the result of [cli::ansi_has_hyperlink_support].
#'
#' @details Clickable ANSI links are only possible in certain terminals,
#'     including RStudio's console but not macOS's Terminal. Use
#'     `options(choosethis.show_links = FALSE)` to force text prompts rather
#'     than clickable links.
#'
#' @return Nothing.
#'
#' @examples begin()
#'
#' @export
begin <- function(
    show_links = getOption("choosethis.show_links", cli::ansi_has_hyperlink_support())
) {

  cli::cli_text("You reach a fork in the road.")

  if (show_links) {
    cli::cli_text("* Go {.run [left](choosethis::left())}")
    cli::cli_text("* Go {.run [right](choosethis::right())}")
  }

  if (!show_links) {
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
