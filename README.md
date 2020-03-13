# Börsdata API i R

Läs RMD filen under vignettes för mer information om hur du använder paketet

## Installera från GitHub:

```r
devtools::install_github('jakobjohannesson/borsdata')
```


### Använd dig av börsdatas API. Se exempelkod nedan!

```r

# Om du inte har paketen installera paketen genom:
install.packages(c("httr","jsonlite","dplyr", "stringr"))

#### Paket ####
library(httr)
library(jsonlite)
library(dplyr)
library(stringr)
library(borsdata)

# Ange din API nyckel - Kräver pro medlemskap hos börsdata.se
key <- "<API KEY>"

### Tillämpningar - Korrelationsmatris mellan olika bolag


# Instruments innehåller alla aktier
instruments <- fetch_instruments(key = key)
Sys.sleep(0.5)

# ERROR: Could not resolve host: apiservice.borsdata.se - Du saknar internet



### Hämtar aktiekurser för olika bolag, använd id från instruments

systemair_kurs <- fetch_stockprice(id = 221, key = key)
Sys.sleep(0.6) # Använder Sys.sleep för att undvika att pinga börsdatas servrar för snabbt
jm_kurs <- fetch_stockprice(id = 116, key = key)
Sys.sleep(0.6)
bahnhof_kurs <- fetch_stockprice(id = 520, key = key)
Sys.sleep(0.6)
balder_kurs <- fetch_stockprice(id = 83, key = key)


#Bahnhof saknar kursen för någon dag, tar bort första värdet från alla andra.
balder_kurs <- balder_kurs[-1, ]
systemair_kurs <- systemair_kurs[-1, ]
jm_kurs <- jm_kurs[-1, ]

### Kurserna sammanslagna till en data frame

frame <-
  data.frame(jm_kurs$c, systemair_kurs$c, bahnhof_kurs$c, balder_kurs$c)
colnames(frame) <- c("JM", "Systemair", "Bahnhof", "Balder")

#### Visualisering - Korrelationsmatris ####
# install.packages("GGally") # om du saknar paketet GGally
library(GGally)
ggpairs(frame)

(m <-
    ggcorr(
      frame,
      method = c("pairwise", "pearson"),
      label = TRUE,
      digits = 2
    ))


# tar fram yttligare en korrelationsmatris
ggpairs(
  data = frame,
  mapping = 1:4,
  axisLabels = "internal",
  upper = list(continuous = "cor"),
  title = "Korrelationsmatris mellan bolag"
) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
```
