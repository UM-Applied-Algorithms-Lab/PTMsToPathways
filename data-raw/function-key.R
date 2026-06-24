function_key <- read.table(
  file = "inst/extdata/FunctionKey.txt",
  header = TRUE,
  sep = "\t",
  comment.char = "#",
  na.strings = "",
  quote = "",
  stringsAsFactors = FALSE,
  fill = TRUE
)

usethis::use_data(function_key, overwrite = TRUE, internal = TRUE)