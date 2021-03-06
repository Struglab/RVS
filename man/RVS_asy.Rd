% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tests.R
\name{RVS_asy}
\alias{RVS_asy}
\title{RVS using asymptotic distribution for score test statistic}
\usage{
RVS_asy(Y, X, P, RVS = "TRUE")
}
\arguments{
\item{Y}{- a vector with the phenotype for n individuals (=ncase+ncont), first ncase (y=1) then ncont (y=0)  (integar)}

\item{X}{- a vector of genotype for a snp, first ncase and then ncont}

\item{P}{(vector with length 3  (double)) - estimated genotype frequency for a variant P(G=0), P(G=1) and P(G=2)}

\item{RVS, }{logic variable to indicate the estimation of variance of the score statistic.}
}
\value{
p-values for the snp
}
\description{
This functions actually includes two association tests which differ only at the estimation of the variance of score statistic by option 'method'.
It uses regular formula for \eqn{Var_{case}(E(G_{ij}|D_{ij}))} when method = 'Regular' (also called likelihood method in the paper),
\eqn{Var_{case}(G_{ij})}  is used for \eqn{Var_{case}(E(G_{ij}|D_{ij}))} when method = 'RVS'. It uses the population frequency P
to estimate variance for case if method=RVS, otherwise use the expected genotype probability for case directly.
}
\details{
Note, both function scaled the variance in equation (1) in Appendix A by dividing N_case*Ncontrol/N
also note the test statistics in anova gives us Rao=s^2/var(s^2), where RVS=s^2/robust var(s^2)
so RVS=Rao *var(s^2)/robust var(s^2), s=sum(y_j-mean(y))E(G_ij|D_ij), therefore var(s)//var(E(Gij|Dij)), var(X) in code.
}
\references{
\url{http://www.ncbi.nlm.nih.gov/pubmed/22570057}

\url{http://www.ncbi.nlm.nih.gov/pubmed/24733292}
}

