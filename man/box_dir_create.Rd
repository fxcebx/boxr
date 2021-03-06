% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/boxr_misc.R
\name{box_dir_create}
\alias{box_dir_create}
\title{Create a new box.com folder}
\usage{
box_dir_create(dir_name, parent_dir_id)
}
\arguments{
\item{dir_name}{The name for the directory you'd like to create.}

\item{parent_dir_id}{The box.com folder id of the folder you'd like your new
folder to be within.}
}
\value{
The \code{\link{httr}} object returned by the api call
}
\description{
Create a new box.com folder
}
\keyword{internal}

