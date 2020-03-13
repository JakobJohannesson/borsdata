# Börsdata API i R

Läs RMD filen under vignettes för mer information om hur du använder paketet

## Installera från GitHub:

```r
devtools::install_github('jakobjohannesson/borsdata')
```

### Använd dig av Börsdatas API. Se exempelkod nedan!


Paket som krävs för att använda dig av tjänsten:

```r
# Om du inte har paketen installera paketen genom:
install.packages(c("httr","jsonlite","dplyr", "stringr"))

#### Paket ####
library(httr)
library(jsonlite)
library(dplyr)
library(stringr)
library(borsdata)
```

För att använda Börsdatas API behöver du ha en API nyckel. Denna kan du hitta under din sida på börsdata.se, följ länken: https://borsdata.se/info/api/api_info

```r
# ange din API nyckel
key <- "<API KEY>"
```

Genom denna API kan du hämta bland annat aktiekurser för alla norska, svenska, danska och finska bolag. En av tillämpningarna är att skapa en korrelationsmatis mellan olika bolag.

```r
# Instruments innehåller alla aktier
instruments <- fetch_instruments(key = key)
```

Om du får "ERROR: Could not resolve host: apiservice.borsdata.se", då saknar du internet. Andra möjliga fel är att du kontaktar servern för ofta. Från instruments hämtas aktiekurser för olika bolag, använder Systemair, JM och Balder som exempel nedan.

```r
systemair_kurs <- fetch_stockprice(id = 221, key = key)
Sys.sleep(0.6)
jm_kurs <- fetch_stockprice(id = 116, key = key)
Sys.sleep(0.6)
balder_kurs <- fetch_stockprice(id = 83, key = key)
```

Använder Sys.sleep(0.6), för att inte pinga servern för ofta. Om servern får alla förfrågningar samtidigt så kommer API:n inte att returnera de aktiekurserna som vi efterfrågar. Slår samman aktiekurserna till en och samma data.frame

```r
frame <-
  data.frame(jm_kurs$c, systemair_kurs$c, balder_kurs$c)
colnames(frame) <- c("JM", "Systemair", "Balder")
```

Visualisering av resultatet i en korrelationsmatris. Skapa tre olika för att visa att det förstås finns många möjligheter på vad som går att göra med datamaterialet.

```r
install.packages("GGally") # om du inte redan har installerat GGally.
library(GGally)


ggpairs(frame)

ggcorr(frame,
      method = c("pairwise", "pearson"),
      label = TRUE,
      digits = 2)


# tar fram yttligare en korrelationsmatris
ggpairs(
  data = frame,
  mapping = 1:3,
  axisLabels = "internal",
  upper = list(continuous = "cor"),
  title = "Korrelationsmatris mellan bolag"
) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))

```

Vill du se mer visualiseringar som är möjliga med datamaterialet? Se min guide till ggplot2 här: https://www.jakobj.se/2020/03/11/ggplot2/
