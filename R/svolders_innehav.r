


key<-"API"

garo <- fetch_stockprice(id = 1011, key = key)
Sys.sleep(1)
troax <- fetch_stockprice(id = 746, key = key)
Sys.sleep(1)
waterproofing <- fetch_stockprice(id = 1322, key = key)
Sys.sleep(1)
nw <- fetch_stockprice(id = 155, key = key)
Sys.sleep(1)
beijer <- fetch_stockprice(id = 30, key = key)
Sys.sleep(1)
fm <- fetch_stockprice(id = 1425, key = key)
Sys.sleep(1)
scandic <- fetch_stockprice(id = 922, key = key)
Sys.sleep(1)
boul <- fetch_stockprice(id = 244, key = key)
Sys.sleep(1)
elanders <- fetch_stockprice(id = 68, key = key)
Sys.sleep(1)
saab <- fetch_stockprice(id = 193, key = key)
Sys.sleep(1)
lime <- fetch_stockprice(id = 1772, key = key)
Sys.sleep(1)
elos <- fetch_stockprice(id = 72, key = key)
Sys.sleep(1)
xano <- fetch_stockprice(id = 240, key = key)
Sys.sleep(1)
platzer <- fetch_stockprice(id = 366, key = key)
Sys.sleep(1)
serneke <- fetch_stockprice(id = 1377, key = key)
Sys.sleep(1)
magnolia <- fetch_stockprice(id = 756, key = key)
Sys.sleep(1)
itab <- fetch_stockprice(id = 114, key = key)


while(nrow(garo)>315){
  garo<-garo[-1,]
}
while(nrow(troax)>315){
  troax<-troax[-1,]
}
while(nrow(waterproofing)>315){
  waterproofing<-waterproofing[-1,]
}
while(nrow(nw)>315){
  nw<-nw[-1,]
}
while(nrow(beijer)>315){
  beijer<-beijer[-1,]
}
while(nrow(fm)>315){
  fm<-fm[-1,]
}
while(nrow(scandic)>315){
  scandic<-scandic[-1,]
}
while(nrow(boul)>315){
  boul<-boul[-1,]
}
while(nrow(elanders)>315){
  elanders<-elanders[-1,]
}
while(nrow(saab)>315){
  saab<-saab[-1,]
}
while(nrow(elos)>315){
  elos<-elos[-1,]
}
while(nrow(xano)>315){
  xano<-xano[-1,]
}
while(nrow(platzer)>315){
  platzer<-platzer[-1,]
}
while(nrow(serneke)>315){
  serneke<-serneke[-1,]
}
while(nrow(magnolia)>315){
  magnolia<-magnolia[-1,]
}
while(nrow(itab)>315){
  itab<-itab[-1,]
}

skr<-data.frame(Garo=garo$c,Troax=troax$c,NordicWaterproof=waterproofing$c,
                NewWave=nw$c,BeijerElectronic=beijer$c,FM_mattson=fm$c,Scandic=scandic$c,Boule=boul$c,
           Elanders=elanders$c,Saab=saab$c,Elos=elos$c,Xano=xano$c,
           Platzer=platzer$c,Serneke=serneke$c,Magnolia=magnolia$c,Itab=itab$c,Lime=lime$c)

library(GGally)

ggpairs(skr)

ggcorr(skr,
       method = c("pairwise", "pearson"),
       label = TRUE,
       digits = 22, name = "Korrelation", )

ggcorr(skr, method = "everything")

ggcorr(skr, method = "everything", label = TRUE,
       label_alpha = TRUE)


ggcorr(
  skr,
  name = "Korrelation",
  label = TRUE,
  
  max_size = 10,
  min_size = 2,
  size = 5,
  hjust = 0.75,
  angle = -45, 
  palette = "PuOr" # colorblind safe, photocopy-able
)



ggpairs(
  data = skr,
  axisLabels = "internal",
  upper = list(continuous = "cor"),
  title = "Korrelationsmatris mellan bolag"
) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))



##### Tester från ggcorr

data(tips, package = "reshape")
ggally_barDiag(tips, mapping = ggplot2::aes(x = day))
ggally_barDiag(tips, mapping = ggplot2::aes(x = tip), binwidth = 0.25)
