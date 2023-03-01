#' Multipage .pdf wrapper function
#'
#' @description
#' Save several ggplots collected in a list to a single multipage pdf
#'
#' @param ggplot_list a list with each list element containing a ggplot object
#' @param pdf_name a text string filename ending in .pdf
#' @param page_width numeric value of desired page width.
#' Default value of 11 provided
#' @param page_height numeric value of desired page height
#' Default value of 8.5 provided
#' @return writes .pdf file with one ggplot object per page
#' @importFrom grDevices dev.off
#' @importFrom grDevices pdf
#' @export
multipagePDFsave <- function(ggplot_list, pdf_name,
                             page_width = 11, page_height = 8.5){
pdf(paste0(pdf_name), width = 11,
    height = 8.5)
invisible(lapply(ggplot_list, print))
dev.off()
}
