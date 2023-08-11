###get the users that follow both state organization and create master key###
library(tidyverse)
library(rtweet)

gen_key <- function(dem, rep){ #takes the dem and rep account names
  .rtweet_token <- readRDS("~/.rtweet_token.rds")
  dem_users <- get_followers(dem, token = .rtweet_token) #collect dem_users
  dem_users$dem_org <- 1 #create variable to indicate it is dem_user
  dem_users$rep_org <- 0 #and not from rep
  rep_users <- get_followers(rep, token = .rtweet_token)
  rep_users$dem_org <- 0 #not dem user
  rep_users$rep_org <- 1 #rep user
  master_key <- rbind(dem_users, rep_users) #bind dataframes
  hold <- aggregate(master_key[grep('org$', names(master_key))],
                          by = list(master_key$user_id),
                          FUN = sum) #aggregate to delte dups and sum together dummy variables
  #someone who was duped because they have 1 in both dem/rep will now but one with 1 in both
  #rename variables that were changes
  hold <- hold %>%
    rename(user_id = Group.1)
  master_key <- lookup_users(hold$user_id, token = .rtweet_token) #get info on all users
  #merge hold back to master_key so all info
  master_key <- master_key %>%
    left_join(hold, by = "user_id") %>%
    #select variables with useful information, identifying
    select(user_id, screen_name, dem_org, rep_org, name, location,
           description, protected, followers_count, friends_count,
           statuses_count, favourites_count, account_created_at, verified)
  return(master_key)
}
