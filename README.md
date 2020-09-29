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

Läs mitt inlägg på min hemsida om hur du kommer igång med [Börsdata
API](https://www.jakobj.se/hur-anvander-jag-borsdatas-api/).

Beskrivning av alla funktioner finns att tillgå genom:
------------------------------------------------------

    help(package = "borsdata")

Senaste funktionerna är kopplade till kpierna som Börsdata har
publicerat
[här](https://github.com/Borsdata-Sweden/API/wiki/KPI-History), vilket
innebär att du nu kan hämta KPI data från varje bolag. KPI datan är
bland annat nyckeltal som EV/EBIT och P/E.

<table style="text-align:center">
<tr>
<td colspan="8" style="border-bottom: 1px solid black">
</td>
</tr>
<tr>
<td style="text-align:left">
Statistic
</td>
<td>
N
</td>
<td>
Mean
</td>
<td>
St. Dev.
</td>
<td>
Min
</td>
<td>
Pctl(25)
</td>
<td>
Pctl(75)
</td>
<td>
Max
</td>
</tr>
<tr>
<td colspan="8" style="border-bottom: 1px solid black">
</td>
</tr>
<tr>
<td style="text-align:left">
KpiId
</td>
<td>
297
</td>
<td>
51.710
</td>
<td>
41.644
</td>
<td>
1
</td>
<td>
16
</td>
<td>
75
</td>
<td>
148
</td>
</tr>
<tr>
<td colspan="8" style="border-bottom: 1px solid black">
</td>
</tr>
</table>

Hoppas paketet är till nytta, undrar du något så [kontakta
mig](https://www.jakobj.se). Uppdaterat senast den 4e september 2020.
