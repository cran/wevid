% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wdists.R
\name{Wdensities.crude}
\alias{Wdensities.crude}
\alias{Wdensities.mix}
\title{Calculate the crude smoothed densities of W in cases and in controls}
\usage{
Wdensities.crude(y, W, xseq, adjust.bw = 1)

Wdensities.mix(y, W, xseq, mixcomponent)
}
\arguments{
\item{y}{Binary outcome label (0 for controls, 1 for cases).}

\item{W}{Weight of evidence.}

\item{xseq}{Sequence of points where the curves should be sampled.}

\item{adjust.bw}{Bandwidth adjustment.}

\item{mixcomponent}{integer vector same length as \code{y}, coded 1 or 2.
Typically set by \code{Wdensities} which calls this function.}
}
\value{
List of crude densities for controls and cases sampled at each point in the
range provided.
}
\description{
These functions allow to compute the smoothed densities of the weight of
evidence in cases and in controls from the crude probabilities.
\code{Wdensities.crude} is designed for the general case; if the model
probabilities reflect a spike-slab mixture distribution, where a high
proportion of values of the predictor are zero, then \code{Wdensities.mix}
will be more appropriate.
}
\keyword{internal}
