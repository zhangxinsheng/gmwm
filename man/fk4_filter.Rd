% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{fk4_filter}
\alias{fk4_filter}
\title{fk4 filter construction}
\usage{
fk4_filter()
}
\value{
A \code{field<vec>} that contains:
\itemize{
 \item{"L"}{A \code{integer} specifying the length of the filter}
 \item{"h"}{A \code{vector} containing the coefficients for the wavelet filter}
 \item{"g"}{A \code{vector} containing the coefficients for the scaling filter}
}
}
\description{
Creates the fk4 filter
}
\details{
This template can be used to increase the amount of filters available for selection.
}
\examples{
fk4_filter()
}
\author{
JJB
}
\keyword{internal}

