# Börsdata API i R

Läs RMD filen under vignettes för mer information om hur du använder paketet

## Installera från GitHub:

```r
devtools::install_github('jakobjohannesson/borsdata')
```


Använd dig av börsdatas API. Se exempelkod nedan!

```{r message=FALSE}

#### paket ####
library(httr)
library(jsonlite)
library(dplyr)
library(stringr)
library(borsdata)

# ange din API nyckel
key <- "<API KEY>"

### Tillämpningar

instruments <- fetch_instruments(key = key)
Sys.sleep(0.5)


### Hämtar aktiekurser för olika bolag

systemair_kurs <- fetch_stockprice(id = 221, key = key)
Sys.sleep(0.6)
jm_kurs <- fetch_stockprice(id = 116, key = key)
Sys.sleep(0.6)
bahnhof_kurs <- fetch_stockprice(id = 520, key = key)
Sys.sleep(0.6)
balder_kurs <- fetch_stockprice(id = 83, key = key)

#Bahnhof saknar kursen för någon dag, tar bort första värdet från alla andra.
balder_kurs <- balder_kurs[-1, ]
systemair_kurs <- systemair_kurs[-1, ]
jm_kurs <- jm_kurs[-1, ]

### Kurserna sammanslagna till en frame

frame <-
  data.frame(jm_kurs$c, systemair_kurs$c, bahnhof_kurs$c, balder_kurs$c)
colnames(frame) <- c("JM", "Systemair", "Bahnhof", "Balder")

#### Visualisering - Korrelationsmatris ####
library(GGally)
ggpairs(frame)

(m <-
    ggcorr(
      frame,
      method = c("pairwise", "pearson"),
      label = TRUE,
      digits = 2
    ))


# small function to display plots only if it's interactive
p_ <- GGally::print_if_interactive

# Use a wrapped function in ggpairs
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
