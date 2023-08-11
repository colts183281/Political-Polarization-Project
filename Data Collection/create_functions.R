####final functions for creating and saving data####

#create user_key, members that follow orgs, to be used for collection
create_ukey <- function(dem, rep, state, date){
  #generate key
  ukey <- gen_key(dem, rep)
  name <- paste(state, "_ukey_", date, sep = "")
  assign(name, ukey)
  file <- "/Users/colts/Box/project_keys/"
  #save key
  save(list = name, file = paste0(file, state, "/user_key/", name, ".RData"))
}

#create follower edge list
create_flw <- function(state, date){
  key <- paste0(state, "_ukey_", date)
  load(paste("C:/Users/colts/Box/project_keys/", state,"/user_key/", key, ".RData", sep = ""))
  flw <- collect_flws(get(paste(key)))
  name <- paste0(state, "_flws_", date)
  assign(name, flw)
  file <- "C:/Users/colts/Box/data_collection/data/"
  save(list = name, file = paste(file, state, "/followers/", name, ".RData", sep = ""))
}

#create friend edge list
create_fr <- function(state, date){
  key <- paste0(state, "_ukey_", date)
  load(paste("C:/Users/colts/Box/project_keys/", state,"/user_key/", key, ".RData", sep = ""))
  fr <- collect_frs(get(paste(key)))
  name <- paste0(state, "_frs_", date)
  assign(name, fr)
  file <- "C:/Users/colts/Box/data_collection/data/"
  save(list = name, file = paste(file, state, "/friends/", name, ".RData", sep = ""))
}

#create tml dataframe
create_tmls <- function(state, date, t_date){
  key <- paste0(state, "_ukey_", date)
  load(paste("C:/Users/colts/Box/project_keys/", state,"/user_key/", key, ".RData", sep = ""))
  tmls <- get_tmls(get(paste(key)), t_date)
  name <- paste0(state, "_tmls_", date)
  assign(name, tmls)
  file <- "C:/Users/colts/Box/data_collection/data/"
  save(list = name, file = paste(file, state, "/tmls/", name, ".RData", sep = ""))
}

#create master key by appending alter ids
create_mkey <- function(state, date){
  #get ukey
  key <- paste0(state, "_ukey_", date)
  load(paste("C:/Users/colts/Box/project_keys/", state,"/user_key/", key, ".RData", sep = ""))
  #get fr dataframe
  fr_name <- paste0(state,"_frs_", date)
  load(paste("C:/Users/colts/Box/data_collection/data/", state,"/friends/", fr_name, ".RData", sep = ""))
  #get flws dataframe
  flw_name <- paste0(state,"_flws_", date)
  load(paste("C:/Users/colts/Box/data_collection/data/", state,"/followers/", flw_name, ".RData", sep = ""))
  #generate key
  mkey <- alter_append(get(paste(fr_name)), get(paste(flw_name)), get(paste(key)))
  name <- paste0(state, "_mkey_", date)
  assign(name, mkey)
  file <- "/Users/colts/Box/project_keys/"
  #save key
  save(list = name, file = paste0(file, state, "/master_key/", name, ".RData"))
}

#create twt_key
create_tkey <- function(state, date){
  #get tmls dataframe
  tml_name <- paste0(state, "_tmls_", date)
  load(paste("C:/Users/colts/Box/data_collection/data/", state,"/tmls/", tml_name, ".RData", sep = ""))
  #generate key
  tkey <- twt_key_id(get(paste(tml_name)))
  name <- paste0(state, "_tkey_", date)
  assign(name, tkey)
  file <- "/Users/colts/Box/project_keys/"
  #save key
  save(list = name, file = paste0(file, state, "/twt_key/", name, ".RData"))
}

