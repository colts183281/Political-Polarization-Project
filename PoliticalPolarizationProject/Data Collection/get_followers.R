#these are the ten function for generating the follower edgelists
#each function takes the list of users and divides into ten equal parts
#each function then uses its corresponding tenth of the user list and 1 of the ten bearer tokens
library(tidyverse)
library(rtweet)
library(doParallel)
library(foreach)

#function that takes first tenth and uses bearer token 1
# flw_11 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'1'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_1 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[1]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_1 <- rbind(part_1, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[1]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_1)
# }
#
# #function that uses 2nd tenth and the 2nd bearer token
# flw_2 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'2'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_2 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[2]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_2 <- rbind(part_2, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[2]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_2)
# }
#
# #function for the third tenth
# flw_3 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'3'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_3 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[3]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_3 <- rbind(part_3, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[3]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_3)
# }
#
# #function for the fouth tenth
# flw_4 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'4'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_4 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[4]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_4 <- rbind(part_4, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[4]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_4)
# }
#
# #function for the fifth tenth
# flw_5 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'5'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_5 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[5]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_5 <- rbind(part_5, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[5]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_5)
# }
#
# #function for the 6th tenth
# flw_6 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'6'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_6 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[6]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_6 <- rbind(part_6, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[6]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_6)
# }
#
# #function for the 7th tenth
# flw_7 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'7'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_7 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[7]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_7 <- rbind(part_7, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[7]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_7)
# }
#
# #function for the 8th tenth
# flw_8 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'8'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_8 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[8]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_8 <- rbind(part_8, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[8]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_8)
# }
#
# #function for the ninth tenth
# flw_9 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'9'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_9 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     followers <- get_followers(users[i], n = 75000, token = get(tokens[9]), retryonratelimit = TRUE)
#     #create dataframe with user_id and nrow of followers
#     id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
#     #bind dataframes to bet spit out
#     hold <- merge(id, followers, by = "row.names")
#     hold <- hold[,2:3]
#     part_9 <- rbind(part_9, hold)
#     #check rate limit
#     rl <- rate_limit(get(tokens[9]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_9)
# }

#function for the last tenth
flw <- function(users, number){
  users <- users %>%
    filter(protected == FALSE)
  #sort the users so that following count is in descending order
  users <- users[order(-users$followers_count),]
  #extracting every 10th row starting at the group number
  #e.g. number = 1 returns 1, 11, 21, 31, 41, 51
  users <- users[seq(number, nrow(users), 10), ]
  #create a list of user_ids to loop through
  users <- users$user_id
  tokens <- get_bearer_list() #generate list of tokens to loop through
  part <- as.data.frame(NULL)
  hold <- as.data.frame(NULL)
  for(i in seq_along(users)){
    followers <- get_followers(users[i], n = 75000, token = get(tokens[number]), retryonratelimit = TRUE)
    #create dataframe with user_id and nrow of followers
    id <- as.data.frame(matrix(users[i], ncol = 1, nrow = nrow(followers)))
    #bind dataframes to bet spit out
    hold <- merge(id, followers, by = "row.names")
    hold <- hold[,2:3]
    part <- rbind(part, hold)
    #check rate limit
    if (rate_limit("get_followers", token = get(tokens[number]))$remaining == 0) {
      Sys.sleep(as.numeric((rate_limit("get_followers", token = get(tokens[number]))$reset + 0.1) * 60))
    }
    writeLines(paste0("user ", i, " of ", length(users), " users "), paste0("c:/users/colts/box/data_collection/logs/followers/",number,".txt"))
  }
  return(part)
}

#these ten functions then need to be run in parallel
collect_flws <- function(users){
  #set up parallel processing
  cl <- parallel::makeCluster(10)
  registerDoParallel(cl)
  #foreach and %dopar% carries out all three iterations at one time in multiple processors
  #it plugs each i from the list resulting in all three functions running at once
  df_list <- foreach(number = 1:10, .packages = c("polproject", "tidyverse", "rtweet")) %dopar% {
    flw(users, number)
  }
  #stop the parallel cluster
  parallel::stopCluster(cl)

  #df_list is a list of dataframes created using each token
  #bind this list of dataframes into one dataframe
  df <- bind_rows(df_list)

  #rename column to identify the org user and alter identifies those that follower org_user
  df <- df %>%
    rename(org_user = V1) %>%
    rename(alter = user_id) %>%
    select(alter, org_user) #to ensure ties are in correct direction

  return(df)
}
