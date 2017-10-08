#' @importFrom httr GET
#' @importFrom httr content
#' @importFrom jsonlite fromJSON
#' @importFrom tibble as_tibble
#' @title Get XKCD Comic Data
#' @description Download data from individual xkcd comics from
#' <https://xkcd.com/>.
#' @param comic \code{integer}. Comic number.
#' @examples \dontrun{get_comic(comic = 614)}
#' @export
get_comic <- function(comic = NULL){

  if(is.null(comic)){
    url <- "http://xkcd.com/info.0.json"
  } else{
    url <- paste0("http://xkcd.com/", comic, "/info.0.json")
  }
  df <- httr::GET(url)

  if(df$status_code != 200){
    stop("Comic not found.")
  }

  df <- httr::content(df, as = "text")
  df2 <- jsonlite::fromJSON(df)
  df3 <- tibble::as_tibble(df2)
  return(df3)
}
