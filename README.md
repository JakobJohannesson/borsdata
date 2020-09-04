Börsdata API i R
================

För att använda dig av paketet behöver du Börsdata pro.

Installera från GitHub:
-----------------------

    # install.packages("devtools")
    devtools::install_github('jakobjohannesson/borsdata', build_vignettes = TRUE)

Om du saknar devtools, ta bort kommentaren (\#) och installera det innan
du installerar borsdata.

Introduktion till paketet
-------------------------

    vignette("borsdata")

Beskrivning av alla funktioner finns att tillgå genom:
------------------------------------------------------

    help(package = "borsdata")

Senaste funktionerna är kopplade till kpierna som Börsdata har
publicerat
[här](https://github.com/Borsdata-Sweden/API/wiki/KPI-History), vilket
innebär att du nu kan hämta KPI data från varje bolag. KPI datan är
bland annat nyckeltal som EV/EBIT och P/E.

Hoppas paketet är till nytta, undrar du något så [kontakta
mig](https://www.jakobj.se). Uppdaterat senast den 4e september 2020.
