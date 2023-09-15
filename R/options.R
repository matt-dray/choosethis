#' Set Options for 'choosethis' Output
#'
#' @param show_links Logical. Should options be presented as clickable links
#'     using 'cli'? Defaults to automatic detection by
#'     [cli::ansi_has_hyperlink_support].
#'
#' @return A list.
#'
#' @examples choosethis_opts(show_links = FALSE)
#'
#' @export
choosethis_opts <- function(show_links = cli::ansi_has_hyperlink_support()) {
  list(show_links = show_links)
}
