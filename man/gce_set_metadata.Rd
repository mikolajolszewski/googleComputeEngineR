% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metadata.R
\name{gce_set_metadata}
\alias{gce_set_metadata}
\title{Sets metadata for the specified instance or projectwise to the data included in the request.}
\usage{
gce_set_metadata(metadata, instance, project = gce_get_global_project(),
  zone = gce_get_global_zone())
}
\arguments{
\item{metadata}{A named list of metadata key/value pairs to assign to this instance}

\item{instance}{Name of the instance scoping this request. If "project-wide" will set the metadata project wide, available to all instances}

\item{project}{Project ID for this request, default as set by \link{gce_get_global_project}}

\item{zone}{The name of the zone for this request, default as set by \link{gce_get_global_zone}}
}
\description{
Set, change and append metadata for an instance.
}
\details{
Authentication scopes used by this function are:
\itemize{
  \item https://www.googleapis.com/auth/cloud-platform
\item https://www.googleapis.com/auth/compute
}

To append to existing metadata passed a named list.

To change existing metadata pass a named list with the same key and modified value you will change.

To delete metadata pass an empty string \code{""} with the same key
}
\examples{

\dontrun{
 # Use "project-wide" to set "enable-oslogin" = "TRUE" to take advantage of OS Login.
 # But you won't be able to login via SSH if you do
 gce_set_metadata(list("enable-oslogin" = "TRUE"), instance = "project-wide")
 
 # enable google logging
 gce_set_metadata(list("google-logging-enabled"="True"), instance = "project-wide")
}
 
}
\seealso{
\href{https://developers.google.com/compute/docs/reference/latest/}{Google Documentation}

Other Metadata functions: \code{\link{Metadata}}
}
\concept{Metadata functions}
