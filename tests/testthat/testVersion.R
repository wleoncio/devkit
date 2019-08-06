context("Version control")

test_that("Dev version increases", {
  expect_message(increaseDevVersion("DESCRIPTION", test = TRUE),
                 "Package version updated")
})
