#' Title
#'
#' @return Returns books that have fallen in rank on newyork times best seller list from hardcover-fiction
#' @export
#'
#' @examples
#' best_sellers_fiction()
best_sellers_fiction <- function(){
APIkey = "gjYjKbV7slnuCAFkDAzSjqhFo6XC9BLJ"
date = "current"
category = "hardcover-fiction"
# Notation about the funtion to make this clearer
URL = paste("https://api.nytimes.com/svc/books/v3/lists/" , date , "/", category , ".json?" , sep = "")
PATH = paste(URL, "api-key=" , APIkey, sep ="")
initialquery = jsonlite::fromJSON(PATH)

books = initialquery$results$books
###Play around with this dataframe to create your own dataset###

#The title of the books that have dropped in rank from the previous week.
return(books$title)
}
