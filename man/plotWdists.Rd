% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plotWdists}
\alias{plotWdists}
\title{Plot the distribution of the weight of evidence in cases and in controls}
\usage{
plotWdists(densities, distlabels = c("Crude", "Model-based"))
}
\arguments{
\item{densities}{Densities object produced by \code{\link{Wdensities}}.}

\item{distlabels}{Character vector of length 2 to be used to label the crude
and the model-based curves (in that order).}
}
\value{
A ggplot object representing the distributions of crude and model-based
weights of evidence in cases and in controls.
}
\description{
Plot the distribution of the weight of evidence in cases and in controls
}
\examples{
data(cleveland)
densities <- with(cleveland, Wdensities(y, posterior.p, prior.p))
plotWdists(densities)

# Example which requires fitting a mixture distribution
data(fitonly)
densities <- with(fitonly, Wdensities(y, posterior.p, prior.p))

# truncate spike
plotWdists(densities) + ggplot2::scale_y_continuous(limits=c(0, 0.5))

}
