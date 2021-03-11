###load tidytext package
library(ggplot2)
library(tidytext)
library(dplyr)

### read review file
library(readxl)
Review <- read_excel("~/Documents/GitHub/TERPcravingz/Tables/11.23 Updated Tables/Review_11.17(2799resIds).xlsx")
View(Review)

### break reviews into word tokens, with one token in one row
review_token <- select(Review, revId, revRating, revDate, revText)
review_token <- unnest_tokens(review_token, word, revText)

### clean data with tidytext stopwords 
review_token %>% filter(!word %in% stop_words$word, 
                        str_detect(word, "^[a-z']+$"))


  select(revId, revRating, revDate, revText) %>%
  unnest_tokens(word, revText) %>%
  filter(!word %in% stop_words$word,
         str_detect(word, "^[a-z']+$"))

review_token




AFINN <- sentiments %>%
  filter(lexicon == "AFINN") %>%
  select(word, afinn_score = score)

AFINN



reviews_sentiment <- review_token %>%
  inner_join(AFINN, by = "word") %>%
  group_by(revId, revRating) %>%
  summarize(sentiment = mean(afinn_score))

reviews_sentiment




ggplot(reviews_sentiment, aes(revRating, sentiment, group = revRating)) +
  geom_boxplot() +
  ylab("Average sentiment score")