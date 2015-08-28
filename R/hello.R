# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


#' write.compacted
#'
#' Write tables to zipped files.
#' Wrapper to write.table and bzfile
#'
#' @param obj.table A data frame to be written to the disc.
#' @param targetFile A string with the path/name of the file to write
#' \code{obj.table}
#' @param compression Algorith to be used to write targetFile
#' @param ... other parameters used on write.table or bzfile
#' @return no value returned.
#' @examples
#'
#' lala <- data.frame(a = c(1,2,3),
#'                    b = c("a", "b", "c"))
#'
#' lala
#'
#' \dontrun{
#' write.compacted(obj = lala,
#'                 targetFile = "./lala.bz2",
#'                 quote = FALSE)
#'                 }

write.compacted <- function(obj.table, targetFile, compression="bzip", ... ) {
  if (compression == "bzip") {
    output <- bzfile(targetFile, "w", ...)
  } else if (compression == "gz") {
    output <- gzfile(targetFile, "w", ...)
  } else if (compression == "xz"){
    output <- xzfile(targetFile, "w", ...)
  } else {
    stop("compression could only be bzip, gz, xz")
  }
  write.table(x = obj, file = output, ...)
  close(output)
}
