#' bgmfiles.
#'
#' Raw data files are maintained here: \url{https://github.com/AustralianAntarcticDivision/box-geometry-models.git}
#'
#' This package contains a simple workflow to update from that source repo and install the raw files into extdata/ of the installed package.
#' @name bgmfiles
"_PACKAGE"

#' BGM files
#'
#' Return the full paths to all files in the extdata/bgm/ folder of this package. 
#'
#' @param pattern optional pattern string to filter files returned, see \code{\link{list.files}} for details
#'
#' @return character vector of file paths
#' @export
#' @examples
#' ## obtain all example files installed
#' bfiles <- bgmfiles()
#' print(basename(bfiles))
#' 
#' ## filter based on an input pattern
#' afiles <- bgmfiles(pattern = "^antarc")
#' print(basename(afiles))
#' 
#' ## read all the text from all files and table raw characters
#' ## (for no reason)
#' lapply(bfiles, function(x) table(unlist(strsplit(paste(readLines(x), collapse = ""), ""))))
bgmfiles <- function(pattern = NULL) {
  list.files(system.file("extdata/bgm", package = "bgmfiles"), recursive = TRUE, full.names = TRUE, pattern = pattern)
}