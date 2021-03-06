##=============================================================================
##
## Copyright (c) 2018-2019 Paul McKeigue
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
##
##=============================================================================

##
## wevid.R
##
## Package documentation.
##

#' Quantifying performance of a diagnostic test using the sampling distribution
#' of the weight of evidence favouring case over noncase status
#'
#' The \pkg{wevid} package provides functions for quantifying the performance
#' of a diagnostic test (or any other binary classifier) by calculating and
#' plotting the distributions in cases and noncases of the weight of evidence
#' favouring case over noncase status.
#'
#' The distributions of the weight of evidence (log Bayes factor) favouring
#' case over noncase status in a test dataset (or test folds generated by
#' cross-validation) can be used to quantify the performance of a diagnostic
#' test.
#'
#' In comparison with the C-statistic (area under ROC curve), the expected
#' weight of evidence (expected information for discrimination) has several
#' advantages as a summary measure of predictive performance. To quantify how
#' the predictor will behave as a risk stratifier, the quantiles of the
#' distributions of weight of evidence in cases and controls can be calculated
#' and plotted.
#'
#' This package can be used with any test dataset on which you have observed
#' case-control status and have computed prior and posterior probabilities of
#' case status using a model learned on a training dataset.
#' Therefore, you should have computed on a test dataset (or on test folds used
#' for cross-validation):
#' \enumerate{
#' \item The prior probability of case status (this may be just the frequency of
#' cases in the training data).
#'
#' \item The posterior probability of case status (using the model learned on
#' the training data to predict on the test data).
#' 
#' \item The observed case status (coded as 0 for noncases, 1 for cases).
#' }
#'
#' The main function of the package is \code{\link{Wdensities}} which computes
#' the crude and model-based densities of weight of evidence in cases and
#' controls. Once these are computed, they can be plotted with
#' \code{\link{plotWdists}} and \code{\link{plotcumfreqs}}. Summary statistics
#' can be reported with \code{\link[=summary.Wdensities]{summary}}.
#'
#' @author
#' Paul McKeigue \email{paul.mckeigue@@ed.ac.uk}
#'
#' @references
#' Paul McKeigue (2019), Quantifying performance of a diagnostic test as the
#' expected information for discrimination: Relation to the C-statistic.
#' \emph{Statistical Methods for Medical Research}, 28 (6), 1841-1851.
#' https://doi.org/10.1177/0962280218776989.
#' 
#' @docType package
#' @import ggplot2 
"_PACKAGE"
