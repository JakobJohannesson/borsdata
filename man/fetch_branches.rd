% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/borsdata.R
\name{fetch_branches}
\alias{fetch_branches}
\title{Fetch Branches}
\usage{
fetch_branches(key = key)
}
\arguments{
\item{key}{Din börsdata API nyckel}
}
\value{
fetch_branches hämtar alla branscher finns att tillgå genom Börsdatas API
}
\description{
Fetch Branches
}
\examples{
key<-"<API KEY>"
fetch_branches(key=key)
}
