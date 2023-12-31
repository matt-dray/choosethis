% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/choose.R
\name{left}
\alias{left}
\title{Go Left}
\usage{
left(
  show_links = getOption("choosethis.show_links", cli::ansi_has_hyperlink_support())
)
}
\arguments{
\item{show_links}{Logical. Present clickable links in the R console?
Defaults to the result of \link[cli:style_hyperlink]{cli::ansi_has_hyperlink_support}.}
}
\value{
Nothing
}
\description{
Go Left
}
\details{
Clickable ANSI links are only possible in certain terminals,
including RStudio's console but not macOS's Terminal. Use
\code{options(choosethis.show_links = FALSE)} to force text prompts rather
than clickable links.
}
\examples{
left()

}
