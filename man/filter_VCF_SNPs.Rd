% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/help_vcf.R
\name{filter_VCF_SNPs}
\alias{filter_VCF_SNPs}
\title{Function to filter variants in VCF files based on column 2 (variant location), 3 (reference call), 4 (alternative call), 7 (PASS) and missingness rate.}
\usage{
filter_VCF_SNPs(vcf_file, caseID_file, nvars = 1000, nread = 300,
  nhead = 128, ncol_ID = 9, missing_th = 0.5)
}
\arguments{
\item{vcf_file}{The saving address and filename  of the vcf file in the format of 'address/filename'.}

\item{caseID_file}{The  file including case IDs in the format of 'address/filename'.}

\item{nvars}{total number of variants in the vcf file. default=1000}

\item{nread}{each time the read.table will read nread number of rows in file, default=300}

\item{nhead}{The number of the lines in the vcf file which started with #, default=128.}

\item{ncol_ID}{default =9, the number of columns before each individual's data}

\item{missing_th}{the missing rate for filter out a variant, default is set=0.5}
}
\value{
The function returns a list including 6 matrices and 2 vectors:

6 matrices:case00, case01, case11, cont00, cont01 and cont11 which contain the genotype likelihoods from VCF, 2 vectors for variant chromosome and location.
}
\description{
This function read the whole vcf file, filter out variants and return the genotype likelihood in VCF file for case and control separately.
it calls \code{\link{get_likelihood_vcf}} to convert the vcf format into phred score.
The keeping criteria are: variants that PASS filters, do not have duplicates, have only one reference allele with missing rate <=missing_th missing rate.
}

