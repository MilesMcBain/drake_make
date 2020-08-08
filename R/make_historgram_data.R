##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param words
##' @return
##' @author Miles McBain
##' @export
make_historgram_data <- function(words) {

  Length <- nchar(words)
  hist_dat <- table(Length)
  as.data.frame(hist_dat)

}
