#Most frequent words
sqldf::sqldf('SELECT wordnopunc, freq 
             FROM cleaned_tweetdata
             ORDER BY freq DESC
             LIMIT 100')
#Generate a TRUE/FALSE column which returns true if 'sorry' or 'apol' is anywhere in the text
cleaned_tweetdata$sorry <- grepl("sorry|apol", cleaned_tweetdata$word)
#Because 'sorry' is a TRUE/FALSE logical column, we need to use 1 or 0 to indicate that in sqldf
#See https://stackoverflow.com/questions/41433927/sqldf-cant-read-logical-vectors-in-r
sqldf::sqldf("SELECT * FROM cleaned_tweetdata 
             WHERE sorry = 1
             ORDER BY freq DESC")
#Use sum to add up all the results and just show that
sqldf::sqldf("SELECT sum(freq), sorry FROM cleaned_tweetdata 
             GROUP BY sorry
             ORDER BY freq DESC")