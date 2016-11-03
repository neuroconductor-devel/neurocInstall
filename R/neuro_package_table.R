#' @title Neuroconductor Package Table
#' @description Returns the table of Neuroconductor packages
#' @return \code{data.frame} of packages with commit IDs
#' @export
#'
#' @examples
#' neuro_package_table()
neuro_package_table = function() {
  #############################
  ## grab list of current neuroc packages
  #############################
  # table_url = paste0("http://162.129.222.10/sites/default",
  # "/files/neuroc_packages.txt"

  table_url = paste0("http://neuroconductor.org/sites/default",
                     "/files/neuroc_packages.txt")
  tab = read.csv(file = table_url,
                 stringsAsFactors = FALSE, header = TRUE,
                 na.strings = "")
  colnames(tab) = c("repo", "version", "stable", "development")
  return(tab)
}

#' @title Neuroconductor Packages
#' @description Returns the vector of Neuroconductor packages
#' @return \code{vector} of packages available on Neuroconductor
#' @export
#'
#' @examples
#' neuro_packages()
neuro_packages = function() {
  tab = neuro_package_table()
  tab = tab$repo
  return(tab)
}