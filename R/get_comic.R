#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom glue glue
#' @importFrom dplyr mutate as_tibble
#' @importFrom assertthat assert_that
#' @title Get XKCD Comic Data
#' @description Download data from individual XKCD comics from
#' <https://xkcd.com/>.
#' @param comic \code{integer}. Comic number.
#' @return a tibble with comic data
#' @examples \dontrun{get_comic(comic = 614)}
#' @export
get_comic <- function(comic = NULL){
  assertthat::assert_that(is.numeric(comic), msg = "comic should be numeric")

  if(is.null(comic)){
    url <- "http://xkcd.com/info.0.json"
  } else{
    url <- glue::glue("http://xkcd.com/{comic}/info.0.json")
  }

  df <- httr::GET(url)

  assertthat::assert_that(df$status_code == 200, msg = "Comic not found.")


  suppressMessages(httr::content(df, as = "text") %>%
    jsonlite::fromJSON() %>%
    dplyr::as_tibble() %>%
    dplyr::mutate(link = glue::glue("http://xkcd.com/{comic}"))
  )
}
