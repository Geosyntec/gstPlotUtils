% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log10Round.R
\name{log10round}
\alias{log10round}
\title{Round values up or down to nearest factor of 10}
\usage{
log10round(x, direction)
}
\arguments{
\item{x}{numeric value to be rounded}

\item{direction}{direction to round number}
}
\value{
x rounded up or down to nearest factor of 10
}
\description{
This function rounds values Up to the nearest factor of 10. Use cases
include determining axis min/max values
}
\examples{
log10round(x = 5, direction = "down")
log10round(x = 5, direction = "up")

}
