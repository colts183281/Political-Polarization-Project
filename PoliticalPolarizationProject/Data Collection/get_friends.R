# #function that takes first tenth and uses bearer token 1
# fr_11 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'1'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_1 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[1]))
#     #create dataframe with user_id and nrow of followers
#     part_1 <- rbind(part_1, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[1]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_1)
# }
#
# #part for 2nd tenth
# fr_2 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'2'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_2 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[2]))
#     #create dataframe with user_id and nrow of followers
#     part_2 <- rbind(part_2, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[2]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_2)
# }
#
# #part for third fifth
# fr_3 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'3'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_3 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[3]))
#     #create dataframe with user_id and nrow of followers
#     part_3 <- rbind(part_3, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[3]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_3)
# }
#
# #4th tenth
# fr_4 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'4'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_4 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[4]))
#     #create dataframe with user_id and nrow of followers
#     part_4 <- rbind(part_4, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[4]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_4)
# }
#
# #fifth tenth
# fr_5 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'5'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_5 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[5]))
#     #create dataframe with user_id and nrow of followers
#     part_5 <- rbind(part_5, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[5]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_5)
# }
#
# #sixth tenth
# fr_6 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'6'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_6 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[6]))
#     #create dataframe with user_id and nrow of followers
#     part_6 <- rbind(part_6, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[6]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_6)
# }
#
# #7th tenth
# fr_7 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'7'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_7 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[7]))
#     #create dataframe with user_id and nrow of followers
#     part_7 <- rbind(part_7, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[7]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_7)
# }
#
# #8th tenth
# fr_8 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'8'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_8 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[8]))
#     #create dataframe with user_id and nrow of followers
#     part_8 <- rbind(part_8, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[8]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_8)
# }
#
# #ninth tenth
# fr_9 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'9'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_9 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[9]))
#     #create dataframe with user_id and nrow of followers
#     part_9 <- rbind(part_9, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[9]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_9)
# }
#
# #last tenth
# fr_10 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   users <- users$user_id
#   users <- split(users, cut(seq_along(users), 10, labels = FALSE))
#   users <- users$'10'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_10 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(users)){
#     friends <- get_friends(users[i], n = 5000, token = get(tokens[10]))
#     #create dataframe with user_id and nrow of followers
#     part_10 <- rbind(part_10, friends)
#     #check rate limit
#     rl <- rate_limit(get(tokens[10]), "followers/ids")
#     if (rl$remaining == 0L) {
#       Sys.sleep(as.numeric(rl$reset, "secs"))
#     }
#   }
#   return(part_10)
# }
#
# #run the above ten functions in parrallell
# collect_frs <- function(users){
#   #set up parallel processing
#   cl <- detectCores()
#   cl <- parallel::makeCluster(cl)
#   registerDoParallel(cl)
#   #create a list of functions to loop through
#   fun_collection <- list(fr_11 = function(users) fr_11(users),
#                          fr_2 = function(users) fr_2(users),
#                          fr_3 = function(users) fr_3(users),
#                          fr_4 = function(users) fr_4(users),
#                          fr_5 = function(users) fr_5(users),
#                          fr_6 = function(users) fr_6(users),
#                          fr_7 = function(users) fr_7(users),
#                          fr_8 = function(users) fr_8(users),
#                          fr_9 = function(users) fr_9(users),
#                          fr_10 = function(users) fr_10(users))
#
#   #the list of names to identify the functions in the list
#   list <- c("fr_11", "fr_2", "fr_3", "fr_4", "fr_5", "fr_6", "fr_7", "fr_8", "fr_9", "fr_10")
#   #foreach and %dopar% carries out all three iterations at one time in multiple processors
#   #it plugs each i from the list resulting in all three functions running at once
#   df_list <- foreach(i = list, .packages = c("polproject", "tidyverse", "rtweet")) %dopar% {
#     fun_collection[[paste0(i)]](users)
#   }
#   #stop the parallel cluster
#   parallel::stopCluster(cl)
#
#   #df_list is a list of dataframes created using each token
#   #bind this list of dataframes into one dataframe
#   df <- bind_rows(df_list)
#
#   #rename column to identify the org user and alter identifies those that follower org_user
#   df <- df %>%
#     rename(org_user = user) %>%
#     rename(alter = user_id)
#
#   return(df)
# }
#
# frs <- collect_frs(users)


#####updated code####
# fr_11 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'1'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_1 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[1]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[1]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[1]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[1]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_1 <- rbind(part_1, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[1]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[1]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_1)
# }
#
# fr_2 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'2'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_2 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[2]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[2]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[2]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[2]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_2 <- rbind(part_2, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[2]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[2]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_2)
# }
#
# fr_3 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'3'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_3 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[3]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[3]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[3]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[3]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[3]))$reset + 0.1) * 60))
#         }
#       }
#       print(j)
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[3]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_3 <- rbind(part_3, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[3]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[3]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_3)
# }
#
# fr_4 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'4'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_4 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[4]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[4]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[4]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[4]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_4 <- rbind(part_4, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[4]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[4]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_4)
# }
#
# fr_5 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'5'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_5 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[5]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[5]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[5]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[5]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_5 <- rbind(part_5, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[5]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[5]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_5)
# }
#
# fr_6 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'6'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_6 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[6]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[6]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[6]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[6]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_6 <- rbind(part_6, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[6]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[6]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_6)
# }
#
# fr_7 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'7'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_7 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[7]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[7]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[7]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[7]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_7 <- rbind(part_7, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[7]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[7]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_7)
# }
#
# fr_8 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'8'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_8 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[8]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[8]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[8]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[8]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_8 <- rbind(part_8, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[8]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[8]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_8)
# }
#
# fr_9 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'9'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_9 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[9]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[9]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[9]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[9]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_9 <- rbind(part_9, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[9]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[9]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_9)
# }
#
# fr_10 <- function(users){
#   users <- users %>%
#     filter(protected == FALSE)
#   user_ids <- users$user_id
#   user_ids <- split(user_ids, cut(seq_along(user_ids), 10, labels = FALSE))
#   user_ids <- user_ids$'10'
#   tokens <- get_bearer_list() #generate list of tokens to loop through
#   part_10 <- as.data.frame(NULL)
#   hold <- as.data.frame(NULL)
#   for(i in seq_along(user_ids)){
#     if(users$friends_count[users$user_id == user_ids[i]] > 5000){
#       #find the number of times we need to page through the rate limit, round up
#       pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
#       #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
#       if(pages > 15){
#         pages <- 15
#       }
#       #set the first page of the api call
#       curr_page <- -1
#       #create empty friends dataframe for binding together the pages
#       friends <- as.data.frame(NULL)
#       #loop through the number of pages
#       for(j in 1:pages){
#         frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[10]))
#         #add the page to the data frame
#         friends <- rbind(friends, frs)
#         #get the next page
#         curr_page <- next_cursor(frs)
#         #check if rate_limit has been exceeded
#         if(rate_limit("get_friends", token = get(tokens[10]))$remaining == 0){
#           Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[10]))$reset + 0.1) * 60))
#         }
#       }
#     }
#     else{
#       friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[10]))
#     }
#     #create dataframe with user_id and nrow of followers
#     part_10 <- rbind(part_10, friends)
#     #check rate limit
#     if (rate_limit("get_friends", token = get(tokens[10]))$remaining == 0) {
#       Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[10]))$reset + 0.1) * 60))
#     }
#   }
#   return(part_10)
# }

########function for finding next cursor, for some reason downloaded one stopped work 8/28/2020#####
next_cursor <- function(x) UseMethod("next_cursor")
#' @export
next_cursor.default <- function(x) return_last(x)

#' @export
next_cursor.numeric <- function(x) {
  sp <- getOption("scipen")
  on.exit(options(sp), add = TRUE)
  options(scipen = 999)
  x <- as.character(x)
  NextMethod()
}

#' @export
next_cursor.character <- function(x) {
  return_last(x)
}

return_last <- function(x, n = 1) {
  x[length(x) - seq_len(n) + 1]
}

#' @export
next_cursor.data.frame <- function(x) {
  if (has_name_(x, "next_cursor_str")) return(x[["next_cursor_str"]])
  if (has_name_(x, "next_cursor")) return(x[["next_cursor"]])
  if (has_name_(attributes(x), "next_cursor")) return(attr(x, "next_cursor"))
  x <- x[[grep("id$", names(x))[1]]]
  NextMethod()
}

#' @export
next_cursor.list <- function(x) {
  if (has_name_(x, "next_cursor_str")) return(x[["next_cursor_str"]])
  if (has_name_(x, "next_cursor")) return(x[["next_cursor"]])
  if (has_name_(attributes(x), "next_cursor")) return(attr(x, "next_cursor"))
  if (!is.null(names(x))) {
    x <- list(x)
  }
  x <- lapply(x, function(x) x[[grep("id$", names(x))[1]]])
  x <- unlist(lapply(x, next_cursor))
  return_last(x)
}

#' @export
next_cursor.response <- function(x) {
  x <- from_js(x)
  NextMethod()
}

has_name_ <- function(x, name) isTRUE(name %in% names(x))

#beggining of data collection
frs <- function(users, number){
  users <- users %>%
    filter(protected == FALSE)
  #sort to be in descending order of friends count
  users <- users[order(-users$friends_count),]
  #extracting every 10th row starting at the group number
  #e.g. number = 1 returns 1, 11, 21, 31, 41, 51
  users <- users[seq(number, nrow(users), 10), ]
  #create list of user ids to loop through
  user_ids <- users$user_id
  tokens <- get_bearer_list() #generate list of tokens to loop through
  part <- as.data.frame(NULL)
  hold <- as.data.frame(NULL)
  for(i in seq_along(user_ids)){
    if(users$friends_count[users$user_id == user_ids[i]] > 5000){
      #find the number of times we need to page through the rate limit, round up
      pages <- ceiling(users$friends_count[users$user_id == user_ids[i]] / 5000)
      #don't want to collect more than 75000 friends, if pages greater than 15 set to 15
      if(pages > 100){
        pages <- 100
      }
      #set the first page of the api call
      curr_page <- -1
      #create empty friends dataframe for binding together the pages
      friends <- as.data.frame(NULL)
      #loop through the number of pages
      for(j in 1:pages){
        frs <- get_friends(user_ids[i], n = 5000, page = curr_page, token = get(tokens[number]))
        #add the page to the data frame
        friends <- rbind(friends, frs)
        #sometimes they change to pvt in middle of collection
        #an empty return breaks the next_cursor
        #create a break in cases friends is empyth
        if(nrow(frs) == 0){
          break
        }
        #get the next page
        curr_page <- next_cursor(frs)
        #issue can arise when someone has close to 5000 friends, if a lag results in one of these friends being lost
        #this loop breaks because the page is zero, the loop will break if this occurs
        if(curr_page == 0){
          break
        }
        #check if rate_limit has been exceeded
        if(rate_limit("get_friends", token = get(tokens[number]))$remaining == 0){
          Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[number]))$reset + 0.1) * 60))
        }
      }
    }
    else{
      friends <- get_friends(user_ids[i], n = 5000, token = get(tokens[number]))
    }
    #create dataframe with user_id and nrow of followers
    part <- rbind(part, friends)
    #check rate limit
    if (rate_limit("get_friends", token = get(tokens[number]))$remaining == 0) {
      Sys.sleep(as.numeric((rate_limit("get_friends", token = get(tokens[number]))$reset + 0.1) * 60))
    }
    writeLines(paste0("user ", i, " of ", length(user_ids), " users "), paste0("c:/users/colts/box/data_collection/logs/friends/",number,".txt"))
  }
  return(part)
}

#run the above ten functions in parrallell
collect_frs <- function(users){
  #set up parallel processing
  cl <- parallel::makeCluster(10)
  registerDoParallel(cl)

  #foreach and %dopar% carries out all three iterations at one time in multiple processors
  #it plugs each i from the list resulting in all three functions running at once
  df_list <- foreach(number = 1:10, .packages = c("polproject", "tidyverse", "rtweet")) %dopar% {
    frs(users, number)
  }
  #stop the parallel cluster
  parallel::stopCluster(cl)

  #df_list is a list of dataframes created using each token
  #bind this list of dataframes into one dataframe
  df <- bind_rows(df_list)

  #rename column to identify the org user and alter identifies those that follower org_user
  df <- df %>%
    rename(org_user = user) %>%
    rename(alter = user_id)

  return(df)
}
