% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusterFunctions.R
\name{makeSubmitJobResult}
\alias{SubmitJobResult}
\alias{makeSubmitJobResult}
\title{Create a SubmitJobResult}
\usage{
makeSubmitJobResult(status, batch.id, msg = NA_character_)
}
\arguments{
\item{status}{[\code{integer(1)}]\cr
Launch status of job. 0 means success, codes between 1 and 100 are temporary errors and any
error greater than 100 is a permanent failure.}

\item{batch.id}{[\code{character(1)}]\cr
Unique id of this job on batch system. Note that this is not the usual job id.
Must be globally unique so that the job can be terminated using just this
information.}

\item{msg}{[\code{character(1)}]\cr
Optional error message in case \code{status} is not equal to 0. Default is \dQuote{OK},
\dQuote{TEMPERROR}, \dQuote{ERROR}, depending on \code{status}.}
}
\value{
[\code{\link{SubmitJobResult}}]. A list, containing
  \code{status}, \code{batch.id} and \code{msg}.
}
\description{
This function is only intended for use in your own cluster functions implementation.

Use this function in your implementation of \code{\link{makeClusterFunctions}} to create a return
value for the \code{submitJob} function.
}
\seealso{
Other ClusterFunctionsHelper: \code{\link{cfBrewTemplate}},
  \code{\link{cfHandleUnknownSubmitError}},
  \code{\link{cfKillJob}},
  \code{\link{cfReadBrewTemplate}},
  \code{\link{makeClusterFunctions}},
  \code{\link{runOSCommand}}
}

