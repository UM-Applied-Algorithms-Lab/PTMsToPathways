#Set the seed (very important)
set.seed(1)
load("../../data/ptmtable.rda")

#Create sample data
sink("noprint") #Supressess the print statements from spearman - IMPROVE ME
testptmt <- SpearmanDissimilarity(ptmtable) #find some way to suppress print statements
sink()
#n is the number of digits that testptmt will round to. Note it should match the expected values on the right
n <- 5

#Unit tests for correct output, ONLY TESTS FIRST ROW
test_that("Testing SpearmanDissimilarity Row 1, Col 1", {expect_equal(round(testptmt[1, 1], n), -2.59383)})
test_that("Testing SpearmanDissimilarity Row 2, Col 2", {expect_equal(round(testptmt[1, 2], n), 25.35892)})
test_that("Testing SpearmanDissimilarity Row 3, Col 3", {expect_equal(round(testptmt[1, 3], n), 6.842180)})

if(file.exists("noprint")) file.remove("noprint")
