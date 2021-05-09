\name{fetch_branches}
\alias{fetch_branches}

\title{Fetch Branches

}
\description{
fetch_branches hämtar alla branscher finns att tillgå genom börsdata.
}
\usage{

}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar värden:  id, namn och sektorid.

}
\references{
https://borsdata.se/info/api/api_info

https://borsdata.se/mypage/api - Direktlänk till din nyckel om du är inloggad och är pro medlem.

https://github.com/Borsdata-Sweden - Börsdatas API beskrivning

https://apidoc.borsdata.se/swagger/index.html - Index för dokumentationen
}
\author{
Utvecklat och underhålls av Jakob Johannesson
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

fetch_branches(key=key)
}
