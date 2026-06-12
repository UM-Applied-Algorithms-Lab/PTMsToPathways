ex_pathways_list <- ReadBioplanetFile(system.file("extdata", "pathway.csv", package = "PTMsToPathways"))

usethis::use_data(ex_pathways_list, overwrite = TRUE)