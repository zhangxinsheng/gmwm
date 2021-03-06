% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{logit2_inv}
\alias{logit2_inv}
\title{Logit2 Inverse Function}
\usage{
logit2_inv(x)
}
\arguments{
\item{x}{A \code{vec} containing real numbers.}
}
\value{
A \code{vec} containing logit probabilities.
}
\description{
This function computes the inverse of a logit transformation of the parameters.
}
\examples{
# Set seed for reproducibility
set.seed(2234)

# Simulate data
x.sim = runif(10, -2, 2)

# Transform
x.sim.transformed = logit2(x.sim)

# Untransform
x.sim.untransformed = logit2_inv(x.sim.transformed)

# Compare results
results = cbind(x.sim, x.sim.untransformed)
}
\author{
James Joseph Balamuta (JJB)
}
\seealso{
\code{\link{logit2}}
}
\keyword{internal}

