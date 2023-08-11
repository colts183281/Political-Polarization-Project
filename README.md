# Political-Polarization-Project

###### The code in this repository collected the data and generated the results for my [Masters Thesis](https://scholarworks.umass.edu/cgi/viewcontent.cgi?article=2235&context=masters_theses_2) A Relational Investigation of Political Polarization on Twitter. This study analyzed Twitter accounts that followed college political organizations during the lead up and aftermath of the 2020 Presidential Election. Using word embeddings, social network analysis, longitudinal models, and semi-structured interviews I demonstrated how the relationship between following political elites and emotional outrage depended on both the historical moment and the culture of the group that the individual belonged to. 

# Data Collection

###### This R code automated my collection process to a single function and was built on top of the tweetr package for accessing the Twitter API. The final function in this package identified all users that followed a list of political organizations, collected the timelines, followers, and friends of these users, and deidentified all PII that existed in accordance with UMass Amherst's Institutional Review Board. The code utilized Twitter's bearer tokens, which allowed for higher rate limits, and implemented parallel processing so that all ten bearer tokens were operating at once.

### collect_data.R

###### The function that automated the whole process. This function takes the name of the Republican and Democratic organizations, the key tied to the state that these organizations resided in, and the dat of data collection. This function ran the collection of timelines, friends, and followers in parallel.

### create_functions.R and create_deid.R

###### These functions saved the output to their respective file paths and saved file by appending the date to the end of their name. This normalized storage for easy access.

### get_followers.R, get_friends.R, get_timelines.R

###### These functions grabbed the data from the Twitter API using tweetr. This code split the list of users into groups of 10 and ran the collection in parallel using my 10 bearer tokens.

### deid_functions.R, alter_append.R

###### These functions deidentified the user names in all files that were collected by generating random ids for each name. Keys were saved for later deidentification.

### load_data.R

###### Contains functions for loading data from their respective file paths and are used for analysis.

# Data Analysis

###### These Python notebooks process the data collected above and extract meaningful results using statistical models and natural language processing. These notebooks train a Republican and Democratic word embedding model, convert each Tweet into a sentence embedding, generate topics by clustering the sentence embedding, assign each tweet to a topic using the cluster means, asign Tweets an emotional valence using cosine similarity to a negative emotional valence vector, cluster 

### Train Word Embeddings

###### This folder contains 2 notebooks that train a word embedding each for Republican and Democratic tweets. Tweets are cleaned, tokenized, a vocabulary is choosen, and then ran through the word embedding model.

### Create Sentence Embeddings

###### These notebooks generate sentence embeddings for each Tweet. The sentence embedding essentially take a weighted average of the vectors associated with the tokens in each Tweet. This allows the Tweets to be located within the same vector space as the word embedding.

### Topic Clustering

###### This notebook contains the notebooks that generates the topics for Republicans and Democrats using a k-means cosine similairty algorithm. Each Tweet is then measured against all topic means for determine the cluster that it belongs to. Random samples of Tweets was used to validate topics.

### Create Emotional Scores

###### This methodology utilizes the word embeddings ability to identify similarities in word. By subtracting all the positive vectors from negative vectors we are able to create a vector that represents negative emotional valence. This vector is then measured against all Tweets to asign each to a negative score. Random samples of Tweets were analyzed to assure validity of model.

### Modeling

###### These notebooks create the final data frame for modeling which is at the individual user/weekly level. Per user/per week there are topic counts, and average emotional valence, and counts of Republican/Democratic elite Twitter acounts followed. I then ran a Fixed Effects model to see what the relationship was over time along with a Time Varying Effects model to see how this relationship changes over time.
