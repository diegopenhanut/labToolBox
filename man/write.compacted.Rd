% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/hello.R
\name{write.compacted}
\alias{write.compacted}
\title{write.compacted}
\usage{
write.compacted(obj.table, targetFile, compression, ...)
}
\arguments{
\item{obj.table}{A data frame to be written to the disc.}

\item{targetFile}{A string with the path/name of the file to write
\code{obj.table}}

\item{compression}{Algorith to be used to write targetFile}

\item{...}{other parameters used on write.table or bzfile}
}
\value{
no value returned.
}
\description{
Write tables to zipped files.
Wrapper to write.table and bzfile
}
\examples{
lala <- data.frame(a = c(1,2,3),
                   b = c("a", "b", "c"))
print(lala)

\dontrun{
write.compacted(obj = lala,
                targetFile = "./lala.bz2",
                quote = FALSE)
                }
}

