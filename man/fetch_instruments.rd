\name{fetch_instruments}
\alias{fetch_instruments}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Fetch Instruments
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
fetch_instruments(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
fetch_instruments()
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Fetch Instruments
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
returnerar en list
}
\references{
%% ~put references to the literature/web site here ~
https://www.jakobj.se
}
\author{
%%  ~~who you are~~
Jakob Johannesson
}
\note{
%%  ~~further notes~~

}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as

#kör
aktier<-fetch_instruments(key=key)
str(aktier)
}