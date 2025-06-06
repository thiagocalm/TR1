% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readHFD.R
\name{readHFD}
\alias{readHFD}
\title{\code{readHFD()} reads a standard HFD .txt table as a \code{data.frame}}
\usage{
readHFD(filepath, fixup = TRUE, item = NULL, ...)
}
\arguments{
\item{filepath}{path or connection to the HFD text file, including .txt suffix.}

\item{fixup}{logical. Should columns be made more user-friendly, e.g., forcing Age to be integer?}

\item{item}{character string of the data product code, which is the base file name, but excluding the country code and file extension \code{.txt}. For instance, \code{"mabRR"} or \code{"tfrVHbo"}. This will be passed in, potentially, by the reader.}

\item{...}{other arguments passed to \code{read.table}, not likely needed.}
}
\value{
data.frame of standard HFD output, except the Age column has been cleaned, and a new open age indicator column has been added.
}
\description{
This calls \code{read.table()} with all the necessary defaults to avoid annoying surprises. The Age column is also stripped of \code{"-"} and \code{"+"} and converted to integer, and a logical indicator column called \code{OpenInterval} is added to show where these were located. Output is invisibly returned, so you must assign it to take a look. This is to avoid lengthy console printouts.
}
\details{
No details of note.
}
\note{
original function submitted by Josh Goldstein, modified by Tim Riffe.
}
