% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Raw_process.R
\name{snp_true_2T}
\alias{snp_true_2T}
\title{Function to change all TRUE genotype into T}
\usage{
snp_true_2T(M)
}
\arguments{
\item{M}{the genotype matrix}
}
\value{
M the genotype matrix after change TRUE into T
}
\description{
In R, if all the individual has genotype 'T' in one strand, R automatically change them into 'TRUE'. This function will change all 'TRUE' genotye back into T.
}

