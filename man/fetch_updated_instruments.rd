\name{fetch_updated_instruments}
\alias{fetch_updated_instruments}
\title{Fetch Updated Instruments
}
\description{
Information is only available in Swedish. fetch_updated_instruments hämtar alla branscher finns att tillgå genom börsdata.
}
\usage{
fetch_updated_instruments(key=key) - Hämtar updated_instruments ur api.
}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar värden:  id på aktien (insID) och vilken tid som bolaget uppdaterades.

}
\references{
https://borsdata.se/info/api/api_info
https://borsdata.se/mypage/api - Direktlänk till din nyckel om du är inloggad och är pro medlem.
https://github.com/Borsdata-Sweden - Börsdatas API beskrivning
https://apidoc.borsdata.se/swagger/index.html - Index för dokumentationen
}
\author{
Jag heter Jakob Johannesson och är en student vid Linköpings universitet. Gör detta som ett roligt projekt då det är kul att testa nya saker. Borsdata blir mitt första paket jag utvecklar i R, främst för att jag tycker att både R och Börsdata är så troligt bra.
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

# Kalla på updated_instruments
updated_instruments<-fetch_updated_instruments(key=key)
str(updated_instruments)


}