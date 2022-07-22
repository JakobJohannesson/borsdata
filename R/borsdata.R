#' Fetch Branches
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_branches hämtar alla branscher finns att tillgå genom Börsdatas API
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_branches(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_branches<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/branches?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df2<-df$branches
  return(df2)
}

#' Fetch Countries
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_countries hämtar alla länder finns att tillgå genom Börsdatas API
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_countries(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_countries<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/countries?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$countries
  return(df)
}

#' Fetch Markets
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_markets hämtar alla marknader finns att tillgå genom Börsdatas API
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_markets(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_markets<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/markets?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$markets  # Sektorerna
  return(df)
}

#' Fetch Sectors
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_sectors hämtar alla Sektorer finns att tillgå genom Börsdatas API
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_sectors(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_sectors<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/sectors?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$sectors  # Sektorerna
  return(df)
}

#' Fetch Instruments
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_instruments hämtar alla Instruments finns att tillgå genom Börsdatas API
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_instruments(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_instruments<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/instruments?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df <- df$instruments
  return(df)
}


#' Fetch Instruments Updated
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_updated_instruments returnerar när olika bolag uppdaterade sina värden senast.
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_updated_instruments(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_updated_instruments<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/instruments/updated?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df <- df$instruments # returnerar de bolagen som senast har uppdaterats
  return(df)
}

#' Fetch year
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_year returnerar de senaste 20 åren med årsredovisningar (eller så långt bak i tiden som det finns redovisningar).
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_year(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_year<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/reports/year")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=20"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reports)
}

#' Fetch year v2
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_year returnerar de senaste 20 åren med årsredovisningar (eller så långt bak i tiden som det finns redovisningar).
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_year(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_year_v2<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/reports/year")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=20"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(dplyr::mutate(df$reports,id = df$instrument))
}


#' Fetch R12
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_r12 returnerar en data.frame med rullande 12 månders kvartalsrapporter i sig. Returnerar 33 variabler.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_r12(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_r12<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/reports/r12")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=40"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reports)
}

#' Fetch R12 V2
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_r12 returnerar en data.frame med rullande 12 månders kvartalsrapporter i sig. Returnerar 33 variabler.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_r12(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_r12_v2<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/reports/r12")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=40"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(dplyr::mutate(df$reports,id = df$instrument))
}

#' Fetch Quarter
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_quarter returnerar en data.frame med de 40 senaste kvartalsrapportna i sig. Returnerar 33 variabler.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_quarter(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_quarter<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/reports/quarter")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=40"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reports)
}

#' Fetch Quarter v2
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_quarter returnerar en data.frame med de 40 senaste kvartalsrapportna i sig. Returnerar 33 variabler.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_quarter(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_quarter_v2<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/reports/quarter")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=40"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(dplyr::mutate(df$reports,id = df$instrument))
}

#' Fetch Stockprice
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_stockprice returnerar aktiekursen för bolaget per dag under de senaste 20 åren eller sedan dagen bolaget gick till börsen.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_stockprice(id=750,key=key)
#' @export
#' @importFrom httr jsonlite
fetch_stockprice<-function(id,key=key){
  endpoint <- paste0("/v1/instruments/", id,"/stockprices")
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se", endpoint, "?authKey=", key, "&maxcount=20"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockPricesList
  return(kurs)
}


#' Fetch Stockprice Last
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_stockprice_last returnerar den senaste aktiekursen för varje bolag.
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_stockprice_last(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_stockprice_last<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/instruments/stockprices/last?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockPricesList
  return(kurs)
}


#' Fetch Stock splits
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_stocksplits returnerar vilka bolag som har gjort en aktiesplit, storleken på splitten och åt vilket håll.
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_stocksplits(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_stocksplits<-function(key=key){
  getdata<-httr::GET(url=paste0("https://apiservice.borsdata.se/v1/instruments/stocksplits?authKey=", key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockSplitList
  return(kurs)
}


#' Fetch KPI Metadata Updated
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_updated_kpi_metadata returnerar när metadatan har uppdaterats senast.
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_updated_kpi_metadata(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_updated_kpi_metadata<-function(key=key){
  getdata<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/kpis/updated?authKey=",key))
  data_json<-httr::content(getdata, type = "text", encoding = "UTF-8")
  info<-jsonlite::fromJSON(data_json)
  return(info$kpisCalcUpdated)
}


#' Fetch KPI Metadata
#' 
#' @param key Din börsdata API nyckel
#' @return fetch_kpi_metadata returnerar kpi metadata.
#' @export
#' @examples
#' key<-"<API KEY>"
#' fetch_kpi_metadata(key=key)
#' @export
#' @importFrom httr jsonlite
fetch_kpi_metadata<-function(key=key){
  getdata<-httr::GET(url = paste0("https://apiservice.borsdata.se","/v1/Instruments/kpis/metadata?authKey=",key))
  data_json<-httr::content(getdata, type = "text", encoding = "UTF-8")
  info<-jsonlite::fromJSON(data_json)
  return(info$kpiHistoryMetadatas)
}


#' Fetch KPI Year
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_kpi_year returnerar de KPI nyckeltal som finns att tillgå genom
#'  börsdatas api. Använder sig enbart av medelvärden, så det kan eventuellt vara av värde
#'   att ändra om i funktionen för att hämta lägsta och högsta värden. Funktionen består av en
#'   loop som går och hämtar ett nyckeltal i taget så det är ganska utmattade för API:n att hämta.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_kpi_year(id=750,key=key)
#' @export
#' @importFrom httr jsonlite rvest purrr lubridate
fetch_kpi_year<-function(id=id,key=key){
  kpi_table<-read_html("https://github.com/Borsdata-Sweden/API/wiki/KPI-History") %>%
      html_table() %>% pluck(1) %>%
      filter(Reporttype == "year") %>%
      filter(Pricetype == "mean") %>% 
      arrange(KpiId)
    output<-NA
    
    for(i in kpi_table$KpiId){
      hej<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/",id,"/kpis/",i,"/year/mean/history?authKey=",key,"&maxcount=20"))
      hej<-httr::content(hej, type="text", encoding = "UTF-8")
      hej<-jsonlite::fromJSON(hej)
      
      if(class(hej$values) == "list"){
        print(class(hej$values))
        output<-left_join(output,data.frame(y=output$y,p=output$p,v = rep(NA,nrow(output))),by = c("y","p"))
        print(i)
      } else {
        print(paste(i , "/ 148"))
        col<-hej$values
        suppressWarnings(
        if(is.na(output[1])){
          output<-hej$values
        } else {
          output<-left_join(output,hej$values, by = c("y","p"))
        }
        )
      }
      
    }
    
    colnames(output)<-c("year", "period",kpi_table$Name)
    
    return(output)
}




#' Fetch KPI R12
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_kpi_r12 returnerar de KPI nyckeltal som finns att tillgå genom
#'  börsdatas api. Använder sig enbart av medelvärden, så det kan eventuellt vara av värde
#'   att ändra om i funktionen för att hämta lägsta och högsta värden. Funktionen består av en
#'   loop som går och hämtar ett nyckeltal i taget så det är ganska utmattade för API:n att hämta.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_kpi_r12(id=750,key=key)
#' @export
#' @importFrom httr jsonlite rvest purrr lubridate
fetch_kpi_r12<-function(id=id,key=key){
  kpi_table<-rvest::read_html("https://github.com/Borsdata-Sweden/API/wiki/KPI-History") %>%
    rvest::html_table() %>% purrr::pluck(1) %>%
    filter(Reporttype == "r12") %>%
    filter(Pricetype == "mean") %>% 
    arrange(KpiId)
  output<-NA
  
  for(i in kpi_table$KpiId){
    hej<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/",id,"/kpis/",i,"/r12/mean/history?authKey=",key,"&maxcount=40"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej<-jsonlite::fromJSON(hej)
    
    if(class(hej$values) == "list"){
      print(class(hej$values))
      output<-left_join(output,data.frame(y=output$y,p=output$p,v = rep(NA,nrow(output))),by = c("y","p"))
      print(i)
    } else {
      print(paste(i , "/ 148"))
      col<-hej$values
      suppressWarnings(
      if(is.na(output[1])){
        output<-hej$values
      } else {
        output<-left_join(output,hej$values, by = c("y","p"))
      }
      )
    }
  }
  colnames(output)<-c("year", "period",kpi_table$Name)
  
  return(output)
}

#' Fetch KPI Quarter
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_kpi_quarter returnerar de KPI nyckeltal som finns att tillgå genom
#'  börsdatas api. Använder sig enbart av medelvärden, så det kan eventuellt vara av värde
#'   att ändra om i funktionen för att hämta lägsta och högsta värden. Funktionen består av en
#'   loop som går och hämtar ett nyckeltal i taget så det är ganska utmattade för API:n att hämta.
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_kpi_quarter(id=750,key=key)
#' @export
#' @importFrom httr jsonlite rvest purrr lubridate
fetch_kpi_quarter<-function(id=id,key=key){
  kpi_table<-read_html("https://github.com/Borsdata-Sweden/API/wiki/KPI-History") %>%
    html_table() %>% pluck(1) %>%
    filter(Reporttype == "quarter") %>%
    filter(Pricetype == "mean") %>% 
    arrange(KpiId)
  output<-NA
  for(i in kpi_table$KpiId){
    hej<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/",id,"/kpis/",i,"/quarter/mean/history?authKey=",key,"&maxcount=40"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej<-jsonlite::fromJSON(hej)
    
    if(class(hej$values) == "list"){
      print(class(hej$values))
      output<-left_join(output,data.frame(y=output$y,p=output$p,v = rep(NA,nrow(output))),by = c("y","p"))
      print(i)
    } else {
      print(paste(i , "/ 140"))
      col<-hej$values
      suppressWarnings(
      if(is.na(output[1])){
        output<-hej$values
      } else {
        output<-left_join(output,hej$values, by = c("y","p"))
      }
      )
    }
  }
  colnames(output)<-c("year", "period",kpi_table$Name)
  
  return(output)
}


#' Fetch Insider
#' 
#' @param key Din börsdata API nyckel
#' @param id Börsdata id
#' @return fetch_insider
#' @export
#' @examples
#' key = "<API KEY>"
#' id = 750 # Exempel 750 för Evolution
#' fetch_insider(id=750,key=key)
#' @export
#' @importFrom httr jsonlite rvest purrr lubridate
fetch_insider<-function(id=id,key=key){
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/",241,"/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-tibble(id=map(values, 1), value=map(values, 3))
  
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/242/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/243/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/244/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/245/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/246/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/247/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/248/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  insider_stage1<-paste0("https://apiservice.borsdata.se/v1/instruments/kpis/249/last/latest?authKey=",key)
  insider_stage2<-httr::GET(insider_stage1)
  content<-content(insider_stage2)
  values<-content$values 
  test<-left_join(test,tibble(id=map(values, 1), value=map(values, 3)),by = "id")
  
  colnames(test)<-c("bolagsnamn",1,2,3,4,5,6,7,8,9)
  id=221
  test3<-test %>% filter(bolagsnamn == id)
  null<-purrr::pluck(test3,2) %>% unlist()
  if(is.null(null)){
    ingen_information<-"Saknar information från Börsdatas API om största kapitalägarna"
  } else {
    ingen_information<-NA
    ingen_information<-test3 %>% select(-1) %>% matrix(nrow = 3) %>% 
      unlist() %>% matrix(ncol=3) %>% as_tibble() %>% rename("Kapital" = V1,
                                                             "Röster" = V2,
                                                             "Ägare" = V3)
    
  }
  return(ingen_information)
}

