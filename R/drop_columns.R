#' Title
#'
#' @param df This is a dataframe with any datatypes
#' @param threshold Between 0-1 for the amount of NAs we accept in a column
#'
#' @return Returns a df w droppe dcolumsn
#' @export
#'# Edits

#' @examples
#' drop_columns(df, .1)
drop_columns = function(df, threshold){
  num_obs = nrow(df)
  df_cut = df[ ,colSums(is.na(df)) < num_obs * threshold]
  return(df_cut)
}
