% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GMWM.R
\name{rgmwm}
\alias{rgmwm}
\title{GMWM for Robust/Classical Comparison}
\usage{
rgmwm(model, data, eff = c(1, 0.9, 0.6), ...)
}
\arguments{
\item{model}{A \code{ts.model} object containing one of the allowed models.}

\item{data}{A \code{matrix} or \code{data.frame} object with only one column (e.g. \eqn{N \times 1}{ N x 1 }), or a \code{lts} object, or a \code{gts} object.}

\item{eff}{A \code{double vector} between 0 and 1 that indicates the efficiency.}

\item{...}{Other arguments passed to the main \code{\link{gmwm}} function.}
}
\value{
A \code{rgmwm} object
}
\description{
Creates a \code{rgmwm} object to compare the results generated by robust/classical method.
}
\examples{
set.seed(8836)
x = gen_gts(1000, AR1(phi = .1, sigma2 = 1) + AR1(phi = 0.95, sigma2 = .1))
obj = rgmwm(2*AR1()+WN(), data = x)
compare_eff(obj)
}

