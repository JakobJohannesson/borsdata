# branches
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

# countries
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

# markets
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

# sectors
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

# Instruments updated

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
  endpoint <- paste0("/v1/instruments/", id,"/reports")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reportsYear)
}

fetch_r12<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reportsR12)
}

fetch_quarter<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  return(df$reportsQuarter)
}

# Stock Prices

fetch_stockprice<-function(id,key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/stockprices")
  getdata<-httr::GET(url=paste0(root, endpoint, auth, key))
  data_json <- httr::content(getdata, type="text", encoding = "UTF-8")
  df <- jsonlite::fromJSON(data_json,)
  kurs<-df$stockPricesList
  return(kurs)
}

# Stock Prices last

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
  kurs<-bolag$stockSplitList
  return(kurs)
}



