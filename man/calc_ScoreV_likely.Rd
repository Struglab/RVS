% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/help_assoc_test.R
\name{calc_ScoreV_likely}
\alias{calc_ScoreV_likely}
\title{calc_ScoreV_likely: Get Variance of vector S by likelihood method}
\usage{
calc_ScoreV_likely(X, Y, hom, multiplier, snp_loop)
}
\arguments{
\item{X}{the expected conditional genotype probability for case and controls}

\item{Y}{the phenotype}
}
\value{
the variance of score statistic vector S by RVS using regular expected prob
}
\description{
it is called in \code{RVS_rare}
}

