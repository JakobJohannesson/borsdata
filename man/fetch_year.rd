\name{fetch_year}
\alias{fetch_year}
\title{Fetch Year
}
\description{
Information is only available in Swedish. fetch_year hämtar all årsdata som finns att tillgå genom börsdata.
}
\usage{

}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar en data.frame med senaste 10 årens finasiella data. Innehåller 33 variabler, med en rad olika finansiella data.

}
\references{
https://borsdata.se/mypage/api - Direktlänk till din nyckel om du är inloggad och är pro medlem.
}
\author{
Jag heter Jakob Johannesson och är en student vid Linköpings universitet.
}
\note{
Håll utkik på github för nya släpp. Uppdatera paketet om du märker att jag har lagt in något på paketets github sida: https://www.github.com/jakobjohannesson/borsdata
}

\seealso{
Undrar du något så hör av dig till mig: jakob@jakobj.se 

Kolla gärna in min hemsida! https://www.jakobj.se
}


\examples{
# Ange din API nyckel
key<-"<API NYCKEL>"

# läs dokumentationen här
vignette("borsdata")
}