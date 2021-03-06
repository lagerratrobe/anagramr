# 1st implementation of signature generation in R

sigTest_1 <- function () {
  word_df <- read.csv("dict.txt", 
                      col.names = c("word"),
                      header = FALSE,
                      stringsAsFactors = FALSE, 
                      encoding = "UTF-8")
  
  
  # previous attempt.  Slow.
  word_df$signature <- lapply(word_df$word,
                              function(x)
                              {paste0(sort(unlist(strsplit(tolower(x), ""))), collapse = "")})
  
  #print(word_df$word[word_df$signature == 'ilos'])
}
