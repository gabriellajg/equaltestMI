% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eqMI.projection.R
\name{eqMI.bootstrap}
\alias{eqMI.bootstrap}
\title{Bootstrap procedure to test the equality of latent factor means using projection method}
\usage{
eqMI.bootstrap(..., B = 100, seed = 111)
}
\arguments{
\item{...}{The same arguments as for any lavaan model. See \code{lavaan::sem} for more information.}

\item{B}{The number of bootstrap samples. Default at 100.}

\item{seed}{The initial seed to generate bootstrap samples. Default at 111.}

\item{bootstrap}{If bootstrap resampling is used to obtain empirical p-value of the statistics.}
}
\value{
bootstrap p-values of the tests of common and specific factors.
}
\description{
Bootstrap procedure to test the equality of latent factor means using projection method
}
\details{
Perform bootstrap procedure when testing the equality of latent means using projection method. Note that raw data must be available for bootstrap resampling to be performed. With the projection method, the cross-group intercepts are not required to be the same for further tests. If bootstrap resampling is used, the test statistics are not referred to chi-squared distributions but to bootstrapped empirical distributions for significance testing. Percentage bootstrap critical values are calculated. This process might be time-consuming if the model is complex or the number of bootstrap samples (B) is large.
}
\examples{
data(HolzingerSwineford)
semmodel<-'
L1 =~ V1 + V2 + V3
L2 =~ V4 + V5 + V6
L3 =~ V7 + V8
L4 =~ V9 + V10 + V11
'
\donttest{
run.bts <- eqMI.bootstrap(model = semmodel, data = HolzingerSwineford,
          group = "school", meanstructure = TRUE, B = 100, seed = 111)
}
}
\references{
Yuan, K. H., & Chan, W. (2016). Measurement invariance via multigroup SEM: Issues and solutions with chi-square-difference tests. Psychological methods, 21(3), 405-426.
}
