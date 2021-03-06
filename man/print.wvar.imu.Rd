% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wvar.R
\name{print.wvar.imu}
\alias{print.wvar.imu}
\title{Print Wavelet Variances for \code{imu} Object}
\usage{
\method{print}{wvar.imu}(x, ...)
}
\arguments{
\item{x}{A \code{wvar.imu} object.}

\item{...}{further arguments passed to or from other methods.}
}
\value{
Summary table
}
\description{
Displays the summary table of wavelet variance for \code{imu} Object.
}
\examples{
\dontrun{
if(!require("imudata")){
install_imudata()
library("imudata")
}

data(imu6)

test = imu(imu6, gyros = 1:3, accels = 4:6, axis = c('x', 'y', 'z'), freq = 100)
x = wvar(test)
print( x )
}
}
\keyword{internal}

