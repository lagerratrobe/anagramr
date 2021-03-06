# loadData.R

# Loads the word list into a dataframe and returns it


loadData <- function ( file_name )
{
  
  result <- try({
    word_data <- suppressWarnings(
      read.csv(file_name,
               col.names = c("words"),
               header = FALSE,
               stringsAsFactors = FALSE,
               encoding = "UTF-8")
    )
  }, silent = TRUE)
  if ( class(result) == "try-error" &&
       "cannot open the connection" %in% attr(result, "condition")) {
    stop(sprintf("Cannot open file %s . Does it exist?", file_name))
  }
  words_mat <- as.matrix(word_data)
  
  return(words_mat)
  
}

# TODO: This is lame, refactor using:
# if ( file.exists(filename) ) {
#   read.table(filename)
# }