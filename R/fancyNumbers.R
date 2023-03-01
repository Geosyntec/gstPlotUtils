#' Creates pleasing formatting of 10^x log scale
#'
#' @description
#' Takes a single or list of numbers that are a factor of 10 and
#' formats them in 10^x notation. A great use case for this
#' would be formatting of axis labels
#'
#' @param n one or a list of numbers that are a factor of 10
#' @return scientific notation format of n
#' @examples
#' fancyNumbers(10)
#' fancyNumbers(c(1,10,100,1000))
#'
#' @export
fancyNumbers <- function(n){
  nNoNA <- n[!is.na(n)]
  x <-gsub(pattern = "1e",replacement = "10^",
           x = format(nNoNA, scientific = TRUE))
  exponents <- as.numeric(sapply(strsplit(x, "\\^"), function(j) j[2]))

  base <- "10^"
  exponents[base == "1" | base == "10"] <- ""
  textNums <- rep(NA, length(n))
  textNums[!is.na(n)] <- paste0(base,exponents)

  textReturn <- parse(text=textNums)
  return(textReturn)
}

fancyNumbers(c(1, 10))

