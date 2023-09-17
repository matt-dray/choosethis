#' Ask to Take the Mean of a Column
#'
#' @param dataframe A data.frame. Should have numeric data columns to be
#'     summarised.
#'
#' @details The user will be prompted to choose a numeric column from the
#'     data.frame object provided in 'dataframe'.
#'
#' @return Nothing.
#'
#' @examples ask_col_mean(mtcars)
#'
#' @export
ask_col_mean <- function(dataframe) {

  dataframe <<- dataframe

  dataframe_num <- dataframe[sapply(dataframe, is.numeric)]

  names_df <- names(dataframe_num)

  cli::cli_text("What column would you like the mean of?")

  names_links <- character(length = length(names_df))

  for (i in seq_along(names_df)) {
    n <- names_df[i]
    names_links[i] <-
      paste0("{.run [", n,"](choosethis::get_mean(dataframe, '", n, "'))}")
  }

  for (i in seq_along(names_links)) {
    cli::cli_text("* ", names_links[i])
  }

}

#' Get the Mean
#'
#' Evaluate the mean of a named column. NAs are removed automatically.
#'
#' @param dat A data.frame. A data frame with numeric columns.
#' @param col Character. The name of a numeric column from the 'dat' data.frame.
#'
#' @return Numeric. The mean of the numeric column 'col' from data.frame 'dat'.
#'
#' @examples get_mean(mtcars, "drat")
#'
#' @export
get_mean <- function(dat, col) {
  mean(dat[[col]], na.rm = TRUE)
}
