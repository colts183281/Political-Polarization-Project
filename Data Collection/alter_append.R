###append alter ties to the master key###
###to be done after all ties are collected###
library(tidyverse)
library(rtweet)

alter_append <- function(fr, flw, master_key){
  flw <- flw %>%
    select(alter) #selecte the alter ids
  fr <- fr %>%
    select(alter) #select the alter ids
  alters <- rbind(fr, flw) #create full list of alters
  #create the alter dataframe to be binded to master_key
  alters <- alters %>%
    mutate(screen_name = 0) %>% #for binding to master_key
    mutate(rep_org = 0) %>%
    mutate(dem_org = 0) %>%
    rename(user_id = alter) %>%
    distinct(user_id, .keep_all = TRUE) #delete user_ids that appear more than once

  master_key <- master_key %>%
    select(screen_name, user_id, rep_org, dem_org) #only want basic variables for bind

  master_key_alters <- rbind(master_key, alters) %>%
    distinct(user_id, .keep_all = TRUE) %>% #delete duplicates
    mutate(key_id = seq_along(user_id)) #create key

  return(master_key_alters)
}
