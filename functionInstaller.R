### Function to install libraries
instLib <- function (libn) {
  instext<-paste0("if (!require(", libn, ")) { 
    install.packages('", paste0(libn), "') #Available in Cran. Used for its dataset with categorical values. 
    require(", libn, ") 
  }" )
  return (eval(parse(text=instext)))
}


### install required libraries
instLib(c("caret", "stats", "stringi", "stringr", "magrittr", "plyr", "dplyr", "tidyr", "reshape2", "lubridate", 
          "sqldf", "data.table", "e1071", "Hmisc", "pastecs", "psych", "microbenchmark", "ggplot2", "DBI", 
          "unbalanced", "Matrix", "gbm", "readr", "scales", "readxl", "xgboost", "pROC", "ROCR"
          ))

