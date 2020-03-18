\name{fetch_instruments}
\alias{fetch_instruments}
\title{Fetch Instruments
}
\description{
Information is only available in Swedish. fetch_instruments hämtar alla aktier finns att tillgå genom börsdata, dock endast svenska, danska, finska och norska aktier.
}
\usage{

}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar en data.frame med 1616 olika aktier med 12 olika variabler, bland annat vilket land bolaget är noterat i och vilket ID som aktien har i databasen. Id variabel är mycket viktigt för att hitta aktierna som intresserar just dig.

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

# läs dokumentationen här
vignette("borsdata")
}