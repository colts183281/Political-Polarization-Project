# Political-Polarization-Project

###### The code in this repository collected the data and generated the results for my [Masters Thesis](https://scholarworks.umass.edu/cgi/viewcontent.cgi?article=2235&context=masters_theses_2) A Relational Investigation of Political Polarization on Twitter. This study analyzed Twitter accounts that followed college political organizations during the lead up and aftermath of the 2020 Presidential Election. Using word embeddings, social network analysis, longitudinal models, and semi-structured interviews I demonstrated how the relationship between following political elites and emotional outrage depended on both the historical moment and the culture of the group that the individual belonged to. 

# Data Collection

###### This R code automated my collection process to a single function and was built on top of the tweetr package for accessing the Twitter API. The final function in this package identified all users that followed a list of political organizations, collected the timelines, followers, and friends of these users, and deidentified all PII that existed in accordance with UMass Amherst's Institutional Review Board. The code utilized Twitter's bearer tokens, which allowed for higher rate limits, and implemented parallel processing so that all ten bearer tokens were operating at once.

### collect_data.R

###### The function that automated the whole process. This function takes the name of the Republican and Democratic organizations, the key tied to the state that these organizations resided in, and the dat of data collection. This function ran the collection of timelines, friends, and followers in parallel.

### create_functions.R and create_deid.R

###### These functions saved the output to their respective file paths and saved file by appending the date to the end of their name. This normalized storage for easy access.

### get_followers.R, get_friends.R, get_timelines.R

###### These functions grabbed the data from the Twitter API using tweetr. 
