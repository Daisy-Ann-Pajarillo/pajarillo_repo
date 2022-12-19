
#Extract 10000 tweets from Twitter using twitteR package including retweets.
#Subset the retweets and the original tweets into a separate file
#Plot the retweets and the original tweets using bar graph in vertical manner.
#Include legends



#install library

library(twitteR)
library(tm)
library(tidytext)
library(ggplot2)
library(plotly)
library(RColorBrewer)
library(dplyr)
library(wordcloud)
library(wordcloud2)
library(tidyr)



#setup credentials

CONSUMER_KEY <- "DcdqJsM1Ofn5Fqh6ScRe09h1Y"
CONSUMER_SECRET <- "BhRCZ0sR0tIcAtCsMTo30FRMElZvi9mOR5ItaprKbLSWthDbqI"
ACCESS_TOKEN <- "1594988417439305728-uYsYMoXYpMON9nk7qv89xiK9OQ2Gzi"
ACCESS_SECRET <- "Qy2ngnEOvhzXJHiy587E0jZkHveHohdSodad3g5YdWzkT"




setup_twitter_oauth(consumer_secret = CONSUMER_SECRET,
                    consumer_key = CONSUMER_KEY,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)




#Extract tweets


tweets <- searchTwitter("kpop", 
                        n = 10000,
                        lang = "en",
                        since = "2022-11-27",
                        until = "2022-12-10",
                        retryOnRateLimit=120)


tweets





#Covert Data to data frame. 
#Save and load data file


tweetsDF<- twListToDF(tweets)

save(tweetsDF, file = "tweetsDF.Rdata")
load(file = "tweetsDF.Rdata")



#Checking for missing values in a data frame

missingValue <-sapply(tweetsDF, function(x) sum(is.na(x)))

missingValue



#Subsetting using the dplyr()package
#Save and load the data file

twts<- tweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)

twts



save(twts, file = "twts.Rdata")
load(file = "twts.Rdata")


#Grouping the date created

twts %>%  group_by(1) %>%  summarise(max = max(created), min = min(created))



#Getting the min and max


twts <- twts %>%  mutate(Created_At_Round = created %>% round
                         (units = 'hours') %>%as.POSIXct())


mintwts <- twts %>% pull(created) %>% min()
mintwts

maxtwts <- twts %>% pull(created) %>% max()
maxtwts





#Using plotly() package and ggplot()


twtsPlot <- ggplot(twts, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +theme(legend.position = "left") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient() 

twtsPlot %>% ggplotly()





#Retweet Data


retwt <- tweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)
retwt



#Grouping the data created in Retweet

retwt %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))



#Getting min and max 


retwt1 <- retwt %>%  mutate(Created_At_Round = created %>% round
                            (units = 'hours') %>%as.POSIXct())


min_retwts <- retwt %>% pull(created) %>% min()
min_retwts

max_retwts <- retwt %>% pull(created) %>% max()
max_retwts



#Plotting Retweets Using plotly() package and ggplot()

retwtPlot <- ggplot(retwt1, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "left") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient()

retwtPlot %>% ggplotly()





