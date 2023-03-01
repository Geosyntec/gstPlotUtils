#' Round values up or down to nearest factor of 10
#'
#' @description
#' This function rounds values Up to the nearest factor of 10. Use cases
#' include determining axis min/max values
#'
#' @param x numeric value to be rounded
#' @param direction direction to round number
#' @return x rounded up or down to nearest factor of 10
#' @examples
#' log10round(x = 5, direction = "down")
#' log10round(x = 5, direction = "up")
#'
#' @export
log10round <- function(x, direction){
  if(direction == "up"){
    out_round <- 10^ceiling(log10(x))}
  if(direction == "down"){
    out_round <- 10^floor(log10(x))}
  return(out_round)
  }

