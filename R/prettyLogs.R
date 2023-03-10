#' ggplot helper function
#'
#' @description
#' make pretty breaks/tick marks for log scale ggplots
#'
#' @param x inherits ggplot object
#' e.g. scale_y_continuous(breaks=prettyLogs)
#' @return pretty_logs_new object containing tick mark ranges and lengths
#' @export 
prettyLogs <- function(x){
  pretty_range <- range(x[x > 0])
  pretty_logs <- 10^(-10:10)
  log_index <- which(pretty_logs < pretty_range[2] &
                       pretty_logs > pretty_range[1])
  log_index <- c(log_index[1]-1,log_index, log_index[length(log_index)]+1)
  pretty_logs_new <-  pretty_logs[log_index]
  return(pretty_logs_new)
}

