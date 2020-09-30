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

fetch_kpi_year<-function(id=id,key=key){
    kpi_table<-ralger::table_scrap("https://github.com/Borsdata-Sweden/API/wiki/KPI-History") %>%
      filter(Reporttype == "year") %>%
      filter(Pricetype == "mean") %>% 
      arrange(KpiId)
    kpi_table$KpiId
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
        if(is.na(output[1])){
          output<-hej$values
        } else {
          output<-left_join(output,hej$values, by = c("y","p"))
        }
        
      }
      
    }
    
    colnames(output)<-c("year", "period",kpi_table$Name)
    
    return(output)
}

# KPI R12

fetch_kpi_r12<-function(id=id,key=key){
  kpi_table<-ralger::table_scrap("https://github.com/Borsdata-Sweden/API/wiki/KPI-History") %>%
    filter(Reporttype == "r12") %>%
    filter(Pricetype == "mean")
  output<-NA
  
  for(i in kpi_table$KpiId){
    hej<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/",id,"/kpis/",i,"/r12/mean/history?authKey=",key,"&maxcount=40"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej<-jsonlite::fromJSON(hej)
    
    if(length(hej$values) == 0){
      print(class(hej$values))
      output<-left_join(output,data.frame(y=output$y,p=output$p,v = rep(NA,nrow(output))),by = c("y","p"))
      print(i)
    } else {
      print(i)
      col<-hej$values
      if(is.na(output[1])){
        output<-hej$values
      } else {
        output<-left_join(output,hej$values, by = c("y","p"))
      }
    }
  }
  colnames(output)<-c("year", "period",kpi_table$Name)
  
  return(output)
}


# KPI Quarter

fetch_kpi_quarter<-function(id=id,key=key){
  kpi_table<-ralger::table_scrap("https://github.com/Borsdata-Sweden/API/wiki/KPI-History") %>%
    filter(Reporttype == "quarter") %>%
    filter(Pricetype == "mean")
  output<-NA
  
  for(i in kpi_table$KpiId){
    hej<-httr::GET(url = paste0("https://apiservice.borsdata.se/v1/Instruments/",id,"/kpis/",i,"/quarter/mean/history?authKey=",key,"&maxcount=40"))
    hej<-httr::content(hej, type="text", encoding = "UTF-8")
    hej<-jsonlite::fromJSON(hej)
    
    if(length(hej$values) == 0){
      print(class(hej$values))
      output<-left_join(output,data.frame(y=output$y,p=output$p,v = rep(NA,nrow(output))),by = c("y","p"))
      print(i)
    } else {
      print(i)
      col<-hej$values
      if(is.na(output[i])){
        output<-hej$values
      } else {
        output<-left_join(output,hej$values, by = c("y","p"))
      }
    }
  }
  colnames(output)<-c("year", "period",kpi_table$Name)
  
  return(output)
}
