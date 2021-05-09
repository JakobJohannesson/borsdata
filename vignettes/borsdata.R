## ---- message=FALSE, eval=FALSE-----------------------------------------------
#  devtools::install_github('jakobjohannesson/borsdata', build_vignettes = TRUE)

## ---- message=FALSE, eval=FALSE-----------------------------------------------
#  help(package = "borsdata")

## ---- message=FALSE-----------------------------------------------------------
library(borsdata)

## ---- message=TRUE------------------------------------------------------------
key<- "<API key>" # Ange din API nyckel 

## ----eval=FALSE---------------------------------------------------------------
#  # Instruments innehåller alla aktier
#  instruments <- fetch_instruments(key = key)
#  str(instruments)
#  head(instruments)

## ----eval=FALSE---------------------------------------------------------------
#  # Ange ditt id i funktionen, exempelvis 221 för Systemair
#  systemair<-fetch_year(id=221,key=key)
#  head(systemair)

## ----eval=FALSE---------------------------------------------------------------
#  # Rullande 12 månader
#  r12<-fetch_r12(id=221,key=key)
#  str(systemair)
#  
#  # Kvartalsdata
#  kvartal<-fetch_quarter(id=221,key=key)
#  str(systemair)
#  

## ----eval=FALSE---------------------------------------------------------------
#  systemair_kurs <- fetch_stockprice(id = 221, key = key)
#  jm_kurs <- fetch_stockprice(id = 116, key = key)
#  balder_kurs <- fetch_stockprice(id = 83, key = key)
#  # Slår samman aktiekurserna till en och samma data.frame
#  frame <-data.frame(JM=jm_kurs$c, Systemair=systemair_kurs$c, Balder=balder_kurs$c)

## ----eval=FALSE---------------------------------------------------------------
#  # install.packages("GGally)
#  library(GGally)
#  
#  ggpairs(frame)
#  
#  # tar fram yttligare en korrelationsmatris
#  ggpairs(
#    data = frame,
#    axisLabels = "internal",
#    title = "Korrelationsmatris mellan bolag") +
#    theme_bw() +
#    theme(plot.title = element_text(hjust = 0.5))

## ----eval=FALSE---------------------------------------------------------------
#  
#  # Kalla på branches
#  branches<-fetch_branches(key=key)
#  head(branches)
#  
#  # Kalla på countries
#  countries<-fetch_countries(key=key)
#  head(countries)
#  
#  # Kalla på markets
#  markets<-fetch_markets(key=key)
#  head(markets)
#  
#  # Kalla på updated_instruments
#  updated_instruments<-fetch_updated_instruments(key=key)
#  head(updated_instruments)
#  
#  # Kalla på sectors
#  sectors<-fetch_sectors(key=key)
#  head(sectors)
#  
#  # Kalla på stockprice_last
#  stockprice_last<-fetch_stockprice_last(key=key)
#  head(stockprice_last)
#  
#  # Kalla på stocksplits
#  stocksplits<-fetch_stocksplits(key=key)
#  head(stocksplits)
#  
#  ## Senaste funktionerna! Nycketalsdata/KPIer
#  
#  # Metadata
#  
#  metadata<-fetch_kpi_metadata(key=key)
#  head(metadata)
#  
#  # Senaste uppdateringen av metadata
#  
#  metadata_updated<-fetch_updated_kpi_metadata(key)
#  head(metadata_updated)
#  
#  # KPI årsdata
#  
#  kpi_year<-fetch_kpi_year(key,bolag)
#  head(kpi_year)
#  
#  # KPI r12
#  
#  kpi_r12<-fetch_kpi_r12(key,bolag)
#  head(kpi_r12)
#  
#  # KPI quarter
#  
#  kpi_quarter<-fetch_kpi_quarter(key,bolag)
#  head(kpi_quarter)
#  
#  
#  
#  
#  

