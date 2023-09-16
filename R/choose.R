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
#' @param show_links Logical. Present clickable links in the R console?
#'     Defaults to the result of [cli::ansi_has_hyperlink_support].
#'
#' @details Clickable ANSI links are only possible in certain terminals,
#'     including RStudio's console but not macOS's Terminal. Use
#'     `options(choosethis.show_links = FALSE)` to force text prompts rather
#'     than clickable links.
#'
#' @return Nothing
#'
#' @examples left()
#'
#' @export
left <- function(
    show_links = getOption("choosethis.show_links", cli::ansi_has_hyperlink_support())
) {

  cli::cli_text("There's a monster!")

  if (show_links) {
    cli::cli_text("* {.run [Fight](choosethis::fight())}")
    cli::cli_text("* {.run [Befriend](choosethis::befriend())}")
  }

  if (!show_links) {
    cli::cli_text("* Fight [choosethis::fight()]")
    cli::cli_text("* Befriend [choosethis::befriend()]")
    cli::cli_text("Copy-paste the code for your option into the console.")
  }

}

#' Fight
#'
#' @return Nothing
#'
#' @examples fight()
#'
#' @export
fight <- function() {
  cli::cli_text("You died.")
}

#' Befriend
#'
#' @return Nothing
#'
#' @examples befriend()
#'
#' @export
befriend <- function() {
  cli::cli_text("You made the monster happy. You win!")
}

#' Go Right
#'
#' @param show_links Logical. Present clickable links in the R console?
#'     Defaults to the result of [cli::ansi_has_hyperlink_support].
#'
#' @details Clickable ANSI links are only possible in certain terminals,
#'     including RStudio's console but not macOS's Terminal. Use
#'     `options(choosethis.show_links = FALSE)` to force text prompts rather
#'     than clickable links.
#'
#' @return Nothing
#'
#' @examples right()
#'
#' @export
right <- function(
    show_links = getOption("choosethis.show_links", cli::ansi_has_hyperlink_support())
) {

  cli::cli_text("There's a monster!")

  if (show_links) {
    cli::cli_text("* {.run [Fight](choosethis::fight())}")
    cli::cli_text("* {.run [Befriend](choosethis::befriend())}")
  }

  if (!show_links) {
    cli::cli_text("* Fight [choosethis::fight()]")
    cli::cli_text("* Befriend [choosethis::befriend()]")
    cli::cli_text("Copy-paste the code for your option into the console.")
  }
}
