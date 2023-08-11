###create a function that returns a list of the bearer tokens###
library(tidyverse)
library(rtweet)

get_bearer_list <- function(){
  .rtweet_bearer1 <<- readRDS("~/.rtweet_bearer1.rds")
  .rtweet_bearer2 <<- readRDS("~/.rtweet_bearer2.rds")
  .rtweet_bearer3 <<- readRDS("~/.rtweet_bearer3.rds")
  .rtweet_bearer4 <<- readRDS("~/.rtweet_bearer4.rds")
  .rtweet_bearer5 <<- readRDS("~/.rtweet_bearer5.rds")
  .rtweet_bearer6 <<- readRDS("~/.rtweet_bearer6.rds")
  .rtweet_bearer7 <<- readRDS("~/.rtweet_bearer7.rds")
  .rtweet_bearer8 <<- readRDS("~/.rtweet_bearer8.rds")
  .rtweet_bearer9 <<- readRDS("~/.rtweet_bearer9.rds")
  .rtweet_bearer10 <<- readRDS("~/.rtweet_bearer10.rds")
  tokens <- c(".rtweet_bearer1", ".rtweet_bearer2", ".rtweet_bearer3", ".rtweet_bearer4",
              ".rtweet_bearer5", ".rtweet_bearer6", ".rtweet_bearer7",
              ".rtweet_bearer8", ".rtweet_bearer9", ".rtweet_bearer10")
}


