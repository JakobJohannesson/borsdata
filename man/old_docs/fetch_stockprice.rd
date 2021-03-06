\name{fetch_stockprice}
\alias{fetch_stockprice}
\title{Fetch Stockprice
}
\description{
Information is only available in Swedish. fetch_stockprice hämtar aktiekursens rörelser under varje dag de 10 senaste åren.
}
\usage{

}

\arguments{

}
\details{
Vid användning behöver du en nyckel till börsdatas API. Ange din nyckel genom att ange den som en string till variabeln key. Se exempel nedan!
}
\value{
Returnerar en ett värde för varje dag. Om bolaget har varit på börsen i 10 år är det ca 2500 observationer. Variablerna är datum, high, low, close, open samt volym.

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