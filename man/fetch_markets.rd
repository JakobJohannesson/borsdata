\name{fetch_markets}
\alias{fetch_markets}
\title{Fetch Markets
}
\description{
Information is only available in Swedish. fetch_markets hämtar alla marknader finns att tillgå genom börsdata.
}
\usage{

}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar värden: id, name, countryID, isIndex, exchangeName

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

# Kalla på markets
markets<-fetch_markets(key=key)
str(markets)


}