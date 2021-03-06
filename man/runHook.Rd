% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Hooks.R
\name{runHook}
\alias{Hook}
\alias{Hooks}
\alias{runHook}
\title{Trigger Evaluation of Custom Function}
\usage{
runHook(obj, hook, ...)
}
\arguments{
\item{obj}{[\link{Registry} | \link{JobCollection}]\cr
Registry which contains the \link{ClusterFunctions} with element \dQuote{hooks}
or a \link{JobCollection} which holds the subset of functions which are executed
remotely.}

\item{hook}{[\code{character(1)}]\cr
ID of the hook as string.}

\item{...}{[any]\cr
Additional arguments passed to the function referenced by \code{hook}.
See description.}
}
\value{
Return value of the called function, or \code{NULL} if there is no hook
 with the specified ID.
}
\description{
Hooks allow to trigger functions calls on specific events.
They can be specified via the \code{\link{ClusterFunctions}} and are trigged on the following events:
\describe{
  \item{\code{pre.sync}}{\code{function(reg, fns, ...)}: Run before synchronizing the registry on the master. \code{fn} is the character vector of paths to the update files.}
  \item{\code{post.sync}}{\code{function(reg, updates, ...)}: Run after synchronizing the registry on the master. \code{updates} is the data.table of processed updates.}
  \item{\code{pre.submit}}{\code{function(reg, ...)}: Run before a job is successfully submitted to the scheduler on the master.}
  \item{\code{post.submit}}{\code{function(reg, ...)}: Run after a job is successfully submitted to the scheduler on the master.}
  \item{\code{pre.do.collection}}{\code{function(reg, cache, ...)}: Run before starting the job collection on the slave. \code{cache} is an internal cache object.}
  \item{\code{post.do.collection}}{\code{function(reg, cache, ...)}: Run before terminating the job on the slave. \code{cache} is an internal cache object.}
}
}

