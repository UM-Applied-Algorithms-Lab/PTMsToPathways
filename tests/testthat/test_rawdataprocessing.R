test_that("merge2cols() handles scalar values", {
  expect_equal(merge2cols(10, 14), 12)
  expect_equal(merge2cols(NA_real_, 14), 14)
  expect_equal(merge2cols(10, NA_real_), 10)
  expect_true(is.na(merge2cols(NA_real_, NA_real_)))
})

test_that("merge2cols() handles vector values", {
  expect_equal(
    merge2cols(c(NA, 2, 4), c(3, NA, 6)),
    c(3, 2, 5)
  )
})

test_that("merge2cols() errors on length mismatch", {
  expect_error(
    merge2cols(1:2, 1:3),
    "same length"
  )
})
