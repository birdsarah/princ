library(feather)

COMMAND <- "python"
DIR_PATH <- "lib"
PATH <- paste(c(DIR_PATH, "implementation_py"), collapse="/")

double_me <- function(i) 
{
  path2script=paste(c(PATH, "misc_function.py"), collapse='')
  allArgs = c(path2script, c(i))
  return(system2(COMMAND, args=allArgs, stdout=TRUE))
}

describe_df <- function(dataframe)
{
  filename = tempfile("feather")
  write_feather(dataframe, filename)
  path2script=paste(c(PATH, "descriptive_stats.py"), collapse='/')
  allArgs = c(path2script, c(filename))
  return(system2(COMMAND, args=allArgs, stdout=TRUE))
}
