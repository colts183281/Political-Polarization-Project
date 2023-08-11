# Political-Polarization-Project

###### The code in this repository collected the data and generated the results for my [Masters Thesis](https://scholarworks.umass.edu/cgi/viewcontent.cgi?article=2235&context=masters_theses_2) A Relational Investigation of Political Polarization on Twitter. This study analyzed Twitter accounts that followed college political organizations during the lead up and aftermath of the 2020 Presidential Election. Using word embeddings, social network analysis, longitudinal models, and semi-structured interviews I demonstrated how the relationship between following political elites and emotional outrage depended on both the historical moment and the culture of the group that the individual belonged to. 

# Data Collection

###### This R code automated my collection process to a single function and was built on top of the tweetr package for accessing the Twitter API. The final function in this package identified all users that followed a list of political organizations, collected the timelines, followers, and friends of these users, and deidentified all PII that existed in accordance with UMass Amherst's Institutional Review Board. The code utilized Twitter's bearer tokens, which allowed for higher rate limits, and implemented parallel processing so that all ten bearer tokens were operating at once.

