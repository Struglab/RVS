% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/help_gener_seqdata.R
\name{calc_simu_exp}
\alias{calc_simu_exp}
\title{Function to calculate expected genotype data for simuation data, given simulated reads, error rate and read depth.}
\usage{
calc_simu_exp(reads, error_vector, rdepth_vector)
}
\arguments{
\item{reads}{simulated reads}

\item{error_vector}{a vector for error rate for each simulated data of each person, one person by one person}

\item{rdepth_vector}{a vector for read depth for each simulated data of each person, one person by one person}
}
\value{
a list includes expected genotype data (exp_geno) and population frequency (geno_freq)
}
\description{
Function to calculate expected genotype data for simuation data, given simulated reads, error rate and read depth.
}

