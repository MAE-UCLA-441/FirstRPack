#'some World Bank Data
#'
#' @format 264 x 64 dataframe ...
#'
#' \describe{
#' \item{index}{Country Names}
#' \item{column1}{Literacy rates}
#'}
"HealthData"

HealthData = read.csv("World Health Data copy.csv")
usethis::use_data( HealthData  , overwrite = TRUE)
