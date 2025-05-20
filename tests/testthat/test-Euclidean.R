#Set the seed (very important)
set.seed(1)
load("../../data/ptmtable.rda")

#Create sample data
sink("noprint") #Suppress print statements
testptmt <- EuclideanDistance(ptmtable)
sink()

#n is the number of digits that testptmt will round to. Note it should match the expected values on the right
n <- 5

test_that("Testing EuclideanDistance Row 1, Col 1", {expect_equal(round(testptmt[1, 1], n), 17.41404)})
test_that("Testing EuclideanDistance Row 2, Col 2", {expect_equal(round(testptmt[1, 2], n), -9.51064)})
test_that("Testing EuclideanDistance Row 3, Col 3", {expect_equal(round(testptmt[1, 3], n), -1.58277)})

if(file.exists("noprint")) file.remove("noprint")
