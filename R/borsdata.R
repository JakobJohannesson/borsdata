# Branches

fetch_branches<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/branches"
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$branches
  return(df)
}

# Countries

fetch_countries<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/countries"
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$countries
  return(df)
}

# Markets

fetch_markets<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/markets"
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$markets  # Sektorerna
  return(df)
}

# Sectors

fetch_sectors<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/sectors"
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df<-df$sectors  # Sektorerna
  return(df)
}

# Instruments

fetch_instruments<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/instruments" # Instruments
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df <- df$instruments # Denna innehåller alla olika bolag
  return(df)
}

# Instruments Updated

fetch_updated_instruments<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/instruments/updated" # Instruments updated
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  df <- df$instruments # returnerar de bolagen som senast har uppdaterats
  return(df)
}

# Reports

fetch_year<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports/year")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key, "&maxcount=20"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reports)
}

fetch_r12<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports/r12")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key, "&maxcount=40"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reports)
}

fetch_quarter<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports/quarter")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key, "&maxcount=40"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reports)
}

# Stock Price

fetch_stockprice<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/stockprices")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key, "&maxcount=20"))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockPricesList
  return(kurs)
}

# Stock Price Last

fetch_stockprice_last<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Rootxxxx
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/","/stockprices/last")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockPricesList
  return(kurs)
}

# Stock splits

fetch_stocksplits<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/","stocksplits")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockSplitList
  return(kurs)
}

# KPI Metadata Updated

fetch_updated_kpi_metadata<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  getdata<-httr::GET(url = paste0(root,"/v1/Instruments/kpis/updated?authKey=",key))
  data_json<-httr::content(getdata, type = "text", encoding = "UTF-8")
  info<-jsonlite::fromJSON(data_json)
  return(info$kpisCalcUpdated)
}

# KPI Metadata

fetch_kpi_metadata<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  getdata<-httr::GET(url = paste0(root,"/v1/Instruments/kpis/metadata?authKey=",key))
  data_json<-httr::content(getdata, type = "text", encoding = "UTF-8")
  info<-jsonlite::fromJSON(data_json)
  return(info$kpiHistoryMetadatas)
}

# KPI year

fetch_kpi_year<-function(kpiid,id=id,key=key){
    hej<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/",id,"/kpis/",kpiid,"/year/mean/history?authKey=",key,"&maxcount=20"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej<-jsonlite::fromJSON(hej)
    if(length(hej$values) == 0){
      return(data.frame(y=c(NA),v=c(NA)))
    } else {
      col<-hej$values
      return(col)
    }
}

# KPI R12

fetch_kpi_r12<-function(kpiid,id=id,key=key){
    root <- "https://apiservice.borsdata.se" # Root
    hej<-httr::GET(url = paste0(root,"/v1/Instruments/",id,"/kpis/",kpiid,"/r12/mean/history?authKey=",key,"&maxcount=40"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej2<-jsonlite::fromJSON(hej)
    col<-hej2$values  
    return(col)
}

# KPI Quarter

fetch_kpi_quarter<-function(kpiid,id=id,key=key){
    root <- "https://apiservice.borsdata.se" # Root
    hej<-httr::GET(url = paste0(root,"/v1/Instruments/",id,"/kpis/",kpiid,"/quarter/mean/history?authKey=",key,"&maxcount=40"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej<-jsonlite::fromJSON(hej)
    col<-hej$values 
    return(col)
}

