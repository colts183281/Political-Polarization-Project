###getimelines from list of users###
library(tidyverse)
library(rtweet)

#loop through the tokens
get_tmls <- function(users, date){ #takes master_key dataframe of users
  #generate the list of tokens that will be stored in the environment
  tokens <- get_bearer_list()
  tmls <- data.frame(NULL) #create final dataframe
  users <- filter(users, protected == FALSE) #only keep public accounts
  users <- users$user_id #create list of user_id
  num_users <- length(users) #get for printing to text file
  counter <- 0
  while(length(users) != 0){ #will eliminate the first user after the for loop is run, while loop will stop when no one is there
    for(i in seq_along(tokens)){ #loop through each token
      if(is.na(users[1]) == TRUE){
        break
      }
      tweets <- get_timeline(users[1], n = 2600, token = get(tokens[i]), check = FALSE)
      if(nrow(tweets) != 0){
        tweets <- tweets %>%
          filter(created_at > date)
      }
      tmls <- rbind(tweets, tmls) #bind current edgelist to total edgelist
      users <- users[-1] #eliminate the user whose edgelist was just found
      rl <- rate_limit(get(tokens[i]))#check ratelimit of current token
      if (rl$remaining[rl$query == "statuses/user_timeline"] == 0L) {
        Sys.sleep(as.numeric(rl$reset[rl$query == "statuses/user_timeline"], "secs")) #if current token's rate limit is met wait
      }
      counter <- 1 + counter
      writeLines(paste0("user ", counter, " of ", num_users, " users "), paste0("c:/users/colts/box/data_collection/logs/timelines/tmls.txt"))
      print(paste0(tokens[i], " ", rl$remaining[rl$query == "application/rate_limit_status"]))
    }
  }
  return(tmls)
}
