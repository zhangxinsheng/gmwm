% Generated by roxygen2: do not edit by hand
% Please edit documentation in src/ts_model_cpp.cpp, src/ts_model_cpp.h
\name{gm_to_ar1}
\alias{gm_to_ar1}
\title{Transform GM to AR1}
\usage{
gm_to_ar1(theta, freq)
}
\arguments{
\item{theta}{A \code{vec} that contains AR1 values.}

\item{freq}{A \code{double} indicating the frequency of the data.}
}
\value{
A \code{vec} containing GM values.
}
\description{
Takes GM values and transforms them to AR1
}
\examples{
gm_to_ar1(c(0.3,1,0.6,.3), 2)
}
\author{
JJB
The function takes a vector of GM values \eqn{\beta}{beta} and \eqn{\sigma ^2_{gm}}{sigma ^2[gm]}
and transforms them to AR1 values \eqn{\phi}{phi} and \eqn{\sigma ^2}{sigma ^2}
using the formulas:
\eqn{\phi  = \exp \left( { - \beta \Delta t} \right)}{phi = exp(-beta * delta[t])}
\eqn{{\sigma ^2} = \sigma _{gm}^2\left( {1 - \exp \left( { - 2\beta \Delta t} \right)} \right)}{sigma^2 = sigma^2[gm]*(1-exp(-2*beta*delta[t]))}
}
\keyword{internal}

