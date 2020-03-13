# branches
fetch_branches<-function(key=key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/branches"
  getdata<-GET(url=paste0(root, endpoint, auth, key))
  getdata$status_code
  data_json <- content(getdata, type="text", encoding = "UTF-8") # Konverterar från json till en lista
  df <- fromJSON(data_json, ) #
  df<-df$branches  # Sektorerna
  return(df)
}

# countries
fetch_countries<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/countries"
  getdata<-GET(url=paste0(root, endpoint, auth, key))
  getdata$status_code
  data_json <- content(getdata, type="text", encoding = "UTF-8") # Konverterar från json till en lista
  df <- fromJSON(data_json, ) #
  df<-df$countries  # Sektorerna
  return(df)
}

# markets
fetch_markets<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/markets"
  getdata<-GET(url=paste0(root, endpoint, auth, key))
  getdata$status_code
  data_json <- content(getdata, type="text", encoding = "UTF-8") # Konverterar från json till en lista
  df <- fromJSON(data_json, ) #
  df<-df$markets  # Sektorerna
  return(df)
}

# sectors
fetch_sectors<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/sectors"
  getdata<-GET(url=paste0(root, endpoint, auth, key))
  getdata$status_code
  data_json <- content(getdata, type="text", encoding = "UTF-8") # Konverterar från json till en lista
  df <- fromJSON(data_json, ) #
  df<-df$sectors  # Sektorerna
  return(df)
}


# Instruments

fetch_instruments<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/instruments" # Instruments
  getdata<-GET(url=paste0(root, endpoint, auth, key))
  getdata$status_code # retunerar 200 om det fungerar
  data_json <- content(getdata, type="text", encoding = "UTF-8") # Konverterar från json till en lista
  df <- fromJSON(data_json, )
  df <- df$instruments # Denna innehåller alla olika bolag
  return(df)
}

# Instruments updated

fetch_updated_instruments<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- "/v1/instruments/updated" # Instruments updated
  getdata<-GET(url=paste0(root, endpoint, auth, key))
  getdata$status_code # retunerar 200 om det fungerar
  data_json <- content(getdata, type="text", encoding = "UTF-8") # Konverterar från json till en lista
  df <- fromJSON(data_json, )
  df <- df$instruments # returnerar de bolagen som senast har uppdaterats
  return(df)
}

# Reports

fetch_year<-function(id,key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports")
  company <-GET(url=paste0(root, endpoint, auth, key))
  company <- content(company, type="text", encoding = "UTF-8")
  df <- fromJSON(company)
  return(df$reportsYear)
}

fetch_r12<-function(id,key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports")
  company <-GET(url=paste0(root, endpoint, auth, key))
  company <- content(company, type="text", encoding = "UTF-8")
  df <- fromJSON(company)
  return(df$reportsR12)
}

fetch_quarter<-function(id,key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  endpoint <- paste0("/v1/instruments/", id,"/reports")
  company <-GET(url=paste0(root, endpoint, auth, key))
  company <- content(company, type="text", encoding = "UTF-8")
  df <- fromJSON(company)
  return(df$reportsQuarter)
}

# Stock Prices

fetch_stockprice<-function(id,key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  kurs_endpoint <- paste0("/v1/instruments/", id,"/stockprices")
  bolag <-GET(url=paste0(root, kurs_endpoint, auth, key))
  bolag <- content(bolag, type="text", encoding = "UTF-8")
  bolag <- fromJSON(bolag)
  kurs<-bolag$stockPricesList
  return(kurs)
}

# Stock Prices last

fetch_stockprice_last<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  kurs_endpoint <- paste0("/v1/instruments/","/stockprices/last")
  bolag <-GET(url=paste0(root, kurs_endpoint, auth, key))
  bolag <- content(bolag, type="text", encoding = "UTF-8")
  bolag <- fromJSON(bolag)
  kurs<-bolag$stockPricesList
  return(kurs)
}

# Stock splits

fetch_stocksplits<-function(key){
  root <- "https://apiservice.borsdata.se" # Root
  auth <- "?authKey="
  kurs_endpoint <- paste0("/v1/instruments/","stocksplits")
  bolag <-GET(url=paste0(root, kurs_endpoint, auth, key))
  bolag <- content(bolag, type="text", encoding = "UTF-8")
  bolag <- fromJSON(bolag)
  kurs<-bolag$stockSplitList
  return(kurs)
}



