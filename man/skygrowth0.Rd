% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skygrowth0.R
\name{skygrowth0}
\alias{skygrowth0}
\title{Compute skygrowth Ne(t) and R(t) estimates for a given list of time scaled trees}
\usage{
skygrowth0(
  tds,
  tstart = decimal_date(as.Date("2020-03-01")),
  tau0 = 1/365/36.5^2,
  res = NULL,
  numpb = 10,
  ncpu = 6,
  gamma1 = (-log(0.5)) * 365/6.5,
  ...
)
}
\arguments{
\item{tds}{A list or multiPhylo, containing ape::phylo or treedater trees}

\item{tstart}{A numeric time to consider as the beginning of the epidemic in region; for best results, select a time when exponential growth in region is well underway. Can be NULL in which case the sarscov2::timports function is used to guess an appropriate date}

\item{tau0}{Precision parameter for skygrowth. Default value corresponds to 1 per cent change in growth per week}

\item{numpb}{Number of parametric bootstrap to use if using timports}

\item{ncpu}{Number CPUs to use}

\item{gamma1}{Death/recovery rates used for translating growth rates into R(t)}

\item{...}{Additional arguments passed to skygrowth (eg mhsteps)}

\item{see}{skygrowth, if omitted will guess a good value}
}
\value{
A list with dataframes for Ne, growth, and R(t)
}
\description{
If tstart is provided than you can supply a list of ape::phylo trees instead of treedater trees
}
\examples{
\dontrun{
library( ape ) ; library( sarscov2 )
tres = read.tree( 'startTrees.nwk' ) 
o = skygrowth0 ( tres, start = decimal_date( as.Date('2020-02-15') ) )
}
}
