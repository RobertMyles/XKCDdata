#' @title Print XKCD
#' @description  Print an XKCD comic in your default Viewer
#' @importFrom glue glue
#' @importFrom htmltools HTML html_print
#' @param comic \code{integer}. Comic number.
#' @examples \dontrun{print_xkcd(comic = 12)}
#' @return the xkcd comic in your default Viewer
#' @export
print_xkcd <- function(comic){

  df <- get_comic(comic)

  glue::glue('<img src="{df$img}" title="{df$title}" alt="{df$alt}">') %>%
    htmltools::HTML() %>%
    htmltools::html_print()
}
