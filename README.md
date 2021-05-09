Börsdata API i R <img src="man/figures/borsdata-hex.png" align="right" width="120"/>
====================================================================================

För att använda dig av R-paket borsdata behöver du en Börsdata API
nyckel. R-paketet borsdata, [R](https://cran.r-project.org/) och
[Rstudio](https://www.rstudio.com/products/rstudio/) är öppen källkod
som du kan ladda ner gratis!

Installera från GitHub:
-----------------------

    # install.packages("devtools")
    devtools::install_github('jakobjohannesson/borsdata', build_vignettes = TRUE)

Om du saknar devtools, ta bort kommentaren (\#) och installera det innan
du installerar borsdata.

### Introduktion till paketet

    vignette("borsdata")

Läs mitt inlägg på min hemsida om hur du kommer igång med [Börsdata
API](https://www.jakobj.se/hur-anvander-jag-borsdatas-api/).

#### Beskrivning av alla funktioner finns att tillgå genom:

    help(package = "borsdata")

### Uppdateringar

-   09-05-2021 - Optimering av koden, åtgärdat en bugg i samband med att
    funktionerna som nyttjar KPI:er nyckeltalen används. Hexloggan
    Börsdata har skapats, dokumentation för varje funktion har skapats.

### Kontakta mig

Undrar du något kring paketet? Skicka ett mail till mig:
<jakob@jakobj.se>

Senast uppdaterad 2021-05-09.
