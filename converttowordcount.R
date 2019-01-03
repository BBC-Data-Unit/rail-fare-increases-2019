#This is based on steps outlined in a [blog post by John Victor Anderson](http://johnvictoranderson.org/?p=115). 
write.csv(tweets$tweettxt, 'tweetsastext.txt')
#Now we re-import that data as a character object using scan:
tweettext <- scan('tweetsastext.txt', what="char", sep=",")
# We convert all text to lower case to prevent any case sensitive issues with counting
tweettext <- tolower(tweettext)
#Repace quotes because each tweet starts and ends with one
tweettext <- gsub('"', '', tweettext)
#Replace new line code with a space
tweettext <- gsub('\n', ' ', tweettext)
#Unescape HTML - first activate the htmltools package
library(htmltools)
#Then run the htmlEscape function
tweettext <- htmltools::htmlEscape(tweettext)
#This doesn't seem to work 100%
#We now need to put this through a series of conversions before we can generate a table:
#Split the text on every space
tweettext.split <- strsplit(tweettext, " ")
#Create a vector
tweettextvec <- unlist(tweettext.split)
#Convert that to a table
tweettexttable <- table(tweettextvec)
#remove the objects created that we no longer need
rm(tweettext.split, tweettextvec)
#That table is enough to create a CSV from:
write.csv(tweettexttable, 'tweettexttable.csv')
#read it back in
tweetdata <- read.csv('tweettexttable.csv')
summary(tweetdata)
#rename the columns
colnames(tweetdata) <- c('index', 'word', 'freq' )
summary(tweetdata)

#Install the tidyverse package
library(tidyverse)
#Install tidytext which is needed for get_stopwords() 
#install.packages("tidytext")
#Activate that - uncomment line above if you get an error here
library(tidytext)

#Use anti_join with stopwords fetched using get_stopwords to remove those stopwords from tweetdata and put in new object
cleaned_tweetdata <- tweetdata %>%
  anti_join(get_stopwords())

cleaned_tweetdata$wordnopunc <- gsub(",","",cleaned_tweetdata$word)
cleaned_tweetdata$wordnopunc <- gsub("-","",cleaned_tweetdata$wordnopunc)
cleaned_tweetdata$wordnopunc <- gsub("!","",cleaned_tweetdata$wordnopunc)
cleaned_tweetdata$wordnopunc <- gsub("'","",cleaned_tweetdata$wordnopunc)
cleaned_tweetdata$wordnopunc <- gsub('"',"",cleaned_tweetdata$wordnopunc)
#This has to be escaped or it replaces all characters
cleaned_tweetdata$wordnopunc <- gsub("\\.","",cleaned_tweetdata$wordnopunc)
cleaned_tweetdata$wordnopunc <- gsub("\\?","",cleaned_tweetdata$wordnopunc)
cleaned_tweetdata$word2 <- NULL