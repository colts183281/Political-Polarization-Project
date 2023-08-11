####deidentify and reidentify functions####
library(tidyverse)
library(rtweet)

#########################
###deidentify function###
#########################

#deidentify ego for edge list
deid_orgu <- function(df, key){
  inds_ego <- match(df$org_user, key$user_id)
  ifelse(is.na(inds_ego), df$org_user, key$key_id[inds_ego])
}

#deidentify alter for edge list
deid_alter <- function(df, key){
  inds_alter <- match(df$alter, key$user_id)
  ifelse(is.na(inds_alter), df$alter, key$key_id[inds_alter])
}

#deid whole edge list
deid_edge <- function(df, key){
  df$alter <- deid_alter(df, key)
  df$org_user <- deid_orgu(df, key)
  return(df)
}

##########################
###reidentify functions###
##########################

#reidentify alter for edgelist
reid_alter <- function(df, key){
  inds_ego <- match(df$alter, key$key_id)
  ifelse(is.na(inds_ego), df$alter, key$user_id[inds_ego])
}

#deidentify orguser for edgelist
reid_orgu <- function(df, key){
  inds_alter <- match(df$org_user, key$key_id)
  ifelse(is.na(inds_alter), df$org_user, key$user_id[inds_alter])
}

#reid whole edgelist
reid_edge <- function(df, key){
  df$alter <- reid_alter(df, key)
  df$org_user <- reid_orgu(df, key)
  return(df)
}

########################
#deidentify twt_ids
#######################
deid_twt <- function(df, twt_key){
  inds_twt <- match(df$status_id, twt_key$status_id)
  ifelse(is.na(inds_twt), df$status_id, twt_key$twt_id[inds_twt])
}


##########################
#reid twt_ids
##########################
reid_twt1 <- function(df, key){
  inds_twt <- match(df$status_id, key$twt_id)
  ifelse(is.na(inds_twt), df$status_id, key$status_id[inds_twt])
}

reid_twt <- function(df, key){
  df$status_id <- reid_twt1(df, key)
  return(df)
}

#################################
#deid user_id in twt_id
#################################
deid_user <- function(df, user_key){
  inds_user <- match(df$user_id, user_key$user_id)
  ifelse(is.na(inds_user), df$user_id, user_key$key_id[inds_user])
}

######################
#reid userid in tml df
########################
reid_user1 <- function(df, key){
  inds_twt <- match(df$user_id, key$key_id)
  ifelse(is.na(inds_twt), df$user_id, key$user_id[inds_twt])
}

reid_user <- function(df, key){
  df$user_id <- reid_user1(df, key)
  return(df)
}

#################################
#deid timeline dataframe
################################
deid_tmls <- function(df, user_key, twt_key){
  df$status_id <- deid_twt(df, twt_key)
  df$user_id <- deid_user(df, user_key)
  df <- df %>%
    select(user_id, status_id, created_at, text, source,
           reply_to_status_id, reply_to_user_id, is_quote, is_retweet,
           favorite_count, retweet_count, hashtags, urls_url,
           urls_t.co, urls_expanded_url, media_url, media_t.co,
           media_type, mentions_user_id, lang, quoted_status_id,
           quoted_user_id, quoted_favorite_count, quoted_retweet_count,
           quoted_followers_count, quoted_friends_count,
           quoted_statuses_count, quoted_created_at, quoted_verified,
           retweet_status_id, retweet_user_id, retweet_created_at,
           retweet_favorite_count, retweet_retweet_count,
           retweet_followers_count, retweet_friends_count, retweet_statuses_count,
           retweet_verified, followers_count, friends_count, statuses_count,
           favourites_count, account_created_at, verified
           ) #select important no identifying variables
  return(df)
}
