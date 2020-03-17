\name{fetch_quarter}
\alias{fetch_quarter}
\title{Fetch Quarter
}
\description{
Information is only available in Swedish. fetch_r12 hämtar alla branscher finns att tillgå genom börsdata.
}
\usage{
fetch_quarter(id=insID,key=key) - InsID hämtas genom att köra funktionen \code{\link{fetch_instruments}}
}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar en data.frame med senaste 10 kvartalsrapporterna i sig. Returnerar 33 variabler.

}
\references{
https://borsdata.se/info/api/api_info
https://borsdata.se/mypage/api - Direktlänk till din nyckel om du är inloggad och är pro medlem.
https://github.com/Borsdata-Sweden - Börsdatas API beskrivning
https://apidoc.borsdata.se/swagger/index.html - Index för dokumentationen
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

# Hämta id för det bolaget som du vill ha data om
fetch_instruments(key=key)

# Ange ditt id i funktionen, exempelvis 221 för Systemair
systemair<-fetch_quarter(id=221,key=key)
str(systemair)
}
