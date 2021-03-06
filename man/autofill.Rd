% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc.R
\name{autofill}
\alias{autofill}
\title{Autofill A Vector}
\usage{
autofill(v, len, fillwith = NA)
}
\arguments{
\item{v}{A \code{vector}}

\item{len}{An \code{integer} indicating the target length}

\item{fillwith}{The specified element used to fill the empty cells}
}
\value{
A new \code{vector}
}
\description{
Autofill a vector to a target length with the specified element
}
\details{
If the length of \code{v} is less than \code{len}, the function will introduce 
\code{fillwith} for empty cells.

Nothing will be done if the length of \code{v} is equal to or larger than \code{len}.
}
\keyword{internal}

