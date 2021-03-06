% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/help_assoc_test.R
\name{sample_bootstrap}
\alias{sample_bootstrap}
\title{Function to bootstrap sampling}
\usage{
sample_bootstrap(X1, X2)
}
\arguments{
\item{X1}{genotype likelihood matrix for case}

\item{X2}{genotype likelihood matrix for control}
}
\value{
two matrices which are the  bootstrap sampling of genotype likelihood matrix for case (Xca) and control (Xco).
}
\description{
It first centralize the input matrix \eqn{X_1, X_2} for case and controls, then take a random sample from each of them with the same case or control size.
It calls \code{\link{calc_centralize_matrix}} and called by \code{\link{RVS_rare}}.
}

