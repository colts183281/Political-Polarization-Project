####deid and save new dataframes####

deid_edge_save <- function(state, date){
  #create the master key
  create_mkey(state, date)
  #create names to call df's loaded using create_mkey
  fr_name <- paste0(state,"_frs_", date)
  flw_name <- paste0(state,"_flws_", date)
  mkey_name <- paste0(state, "_mkey_", date)
  #loadedge lists
  load(paste("C:/Users/colts/Box/data_collection/data/", state,"/friends/", fr_name, ".RData", sep = ""))
  load(paste("C:/Users/colts/Box/data_collection/data/", state,"/followers/", flw_name, ".RData", sep = ""))
  #load mkey
  load(paste("C:/Users/colts/Box/project_keys/", state,"/master_key/", mkey_name, ".RData", sep = ""))
  #create deid fr and flw df's
  fr_deid <- deid_edge(get(paste(fr_name)), get(paste(mkey_name)))
  flw_deid <- deid_edge(get(paste(flw_name)), get(paste(mkey_name)))
  #rename the dataframes
  assign(fr_name, fr_deid)
  assign(flw_name, flw_deid)
  file <- "C:/Users/colts/Box/data_collection/data/"
  #save both of the dataframes
  save(list = fr_name, file = paste(file, state, "/friends/", fr_name, ".RData", sep = ""))
  save(list = flw_name, file = paste(file, state, "/followers/", flw_name, ".RData", sep = ""))
}

deid_tmls_save <- function(state, date){
  #create twt_key, which also loads in tmls ddf
  create_tkey(state, date)
  #create names for calling dfs
  tml_name <- paste0(state,"_tmls_", date)
  tkey_name <- paste0(state, "_tkey_", date)
  mkey_name <- paste0(state, "_mkey_", date)
  #load mkey
  load(paste("C:/Users/colts/Box/project_keys/", state,"/master_key/", mkey_name, ".RData", sep = ""))
  #load tkey
  load(paste("C:/Users/colts/Box/project_keys/", state,"/twt_key/", tkey_name, ".RData", sep = ""))
  #load timelines
  load(paste("C:/Users/colts/Box/data_collection/data/", state,"/tmls/", tml_name, ".RData", sep = ""))
  #deid tmls
  deid_tml <- deid_tmls(get(paste(tml_name)), get(paste(mkey_name)), get(paste(tkey_name)))
  assign(tml_name, deid_tml)
  file <- "C:/Users/colts/Box/data_collection/data/"
  save(list = tml_name, file = paste(file, state, "/tmls/", tml_name, ".RData", sep = ""))
}
