#' bgmfiles.
#'
#' Raw data files are maintained here: \url{https://github.com/AustralianAntarcticDivision/box-geometry-models.git}
#'
#' This package contains a simple workflow to update from that source repo and install the raw files into extdata/ of the installed package.
#' @name bgmfiles
#' @docType package
NULL

#' BGM files
#'
#' Return the full paths to all files in the extdata/bgm/ folder of this package. 
#'
#' @param pattern optional pattern string to filter files returned, see \code{\link{list.files}} for details
#'
#' @return character vector of file paths
#' @export
bgmfiles <- function(pattern = NULL) {
  list.files(system.file("extdata/bgm", package = "bgmfiles"), recursive = TRUE, full.names = TRUE, pattern = pattern)
}