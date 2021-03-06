% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/boxr_dir_verbs.R
\name{box_fetch}
\alias{box_fetch}
\alias{box_merge}
\alias{box_push}
\title{Recursive, Directory-wide Operations to Synchronize Local and box.com
directories}
\usage{
box_fetch(dir_id, local_dir = getwd(), recursive = TRUE,
  overwrite = FALSE, delete = FALSE)

box_push(dir_id, local_dir = getwd(), ignore_dots = TRUE,
  overwrite = FALSE, delete = FALSE)

box_merge(dir_id, local_dir = getwd(), ignore_dots = TRUE)
}
\arguments{
\item{dir_id}{The box.com id for the folder that you'd like to query}

\item{local_dir}{The local directory which you'd like \code{dir_id} to
correspond to. If you're not interested in mapping local to hosted
directories, this isn't terribly important.}

\item{recursive}{\code{logical}. Should the call include subdirectories and
thier contents?}

\item{overwrite}{\code{logical}. Should existing files with the same name be
overwritten?}

\item{delete}{\code{logical}. Should files which exist in the destination,
but not the origin, be deleted?}

\item{ignore_dots}{\code{logical}. Should local directories with filenames
begining with dots be ignored? This is useful for 'invisible' folders such as
\code{.git} and \code{.Rproj.user} where uploading them is likely to be
unexpected.}
}
\value{
Nothing. Used for its side-effects.
}
\description{
These functions take a path to a local directory, and a box.com folder id,
and perform the update/sychronization operations.
}
\details{
\code{box_fetch} Will create local versions of files and directories which
are present on box.com, but not locally. If \code{overwrite} is true, files
which are present both locally and on box.com will be overwritten with the
box.com versions.

\code{box_push} Will create box.com versions of files and directories which
are present locally, but not on box.com. Files which already appear to exist
will be uploaded as new versions.

\code{box_fetch} A convenience function, effectively
\code{box_fetch();box_push()}

The box.com API does not have direct support for downloading more
than one file. With \code{recursive} set to \code{false}, \code{box_fetch}
will download the files, but not subdirectories of the folder specified by
\code{dir_id}. If \code{recursive == TRUE}, then it will download every file
and folder in the directory tree. Because R has to make recursive API calls
to explore the directory structure, and then iterate through each file it
finds, this option can be rather slow.
}

