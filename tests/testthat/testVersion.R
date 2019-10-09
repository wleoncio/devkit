context("Version control")

test_that("Dev version increases", {
  expect_message(increaseDevVersion(test = TRUE), "devkit updated")
})
