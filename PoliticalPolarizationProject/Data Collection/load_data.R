load_flws <- function(state, date){
  #create names
  flw_name <- paste0(state,"_flws_", date)
  mkey_name <- paste0(state, "_mkey_", date)
  #load the follower edge list
  load(paste("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/data_collection/data/", state,"/followers/", flw_name, ".RData", sep = ""))
  #load mkey
  load(paste("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state,"/master_key/", mkey_name, ".RData", sep = ""))
  #reidentify
  flw_reid <- reid_edge(get(paste(flw_name)), get(paste(mkey_name)))
  return(flw_reid)
}

load_frs <- function(state, date){
  #create names
  frs_name <- paste0(state,"_frs_", date)
  mkey_name <- paste0(state, "_mkey_", date)
  #load the follower edge list
  load(paste("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/data_collection/data/", state,"/friends/", frs_name, ".RData", sep = ""))
  #load mkey
  load(paste("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state,"/master_key/", mkey_name, ".RData", sep = ""))
  #reidentify
  frs_reid <- reid_edge(get(paste(frs_name)), get(paste(mkey_name)))
  return(frs_reid)
}

#function for loading tmls
load_tmls <- function(state, date){
  #create names
  tmls_name <- paste0(state, "_tmls_", date)
  mkey_name <- paste0(state, "_mkey_", date)
  tkey_name <- paste0(state, "_tkey_", date)
  #load tmls data frame
  load(paste0("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/data_collection/data/",state, "/tmls/", tmls_name, ".RData"))
  #load ukey_name
  load(paste0("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state, "/master_key/", mkey_name, ".RData"))
  #load tkey
  load(paste0("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state, "/twt_key/", tkey_name, ".RData"))
  #reidentify
  tmls_reid <- reid_user(get(paste(tmls_name)), get(paste(mkey_name)))
  tmls_reid <- reid_twt(tmls_reid, get(paste(tkey_name)))
  return(tmls_reid)
}

#load full timelines
load_full_tmls <- function(state, date){
  #create names
  tmls_name <- paste0(state,"_", date)
  ukey_name <- paste0(state, "_ukey")
  tkey_name <- paste0(state, "_tkey_", date)
  #load tmls data frame
  load(paste0("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/data_collection/data/",state, "/", tmls_name, ".RData"))
  #load ukey_name
  load(paste("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state, "/", ukey_name, ".RData", sep = ""))
  #load tkey
  load(paste0("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state, "/twt_key/", tkey_name, ".RData"))
  #reidentify
  tmls_full_reid <- reid_user(get(paste(tmls_name)), get(paste(ukey_name)))
  tmls_full_reid <- reid_twt(tmls_full_reid, get(paste(tkey_name)))
  return(tmls_full_reid)
}

#function for loading ukey
load_ukey <- function(state, date){
  #load in ukey for attaching party_ids
  load(paste0("C:/Users/colts/OneDrive - University of Massachusetts/BoxData/project_keys/", state, "/user_key/", state, "_ukey_", date, ".RData"))
  #create name of object
  ukey_name <- paste0(state, "_ukey_", date)
  #return the object
  return(get(paste0(ukey_name)))
}
