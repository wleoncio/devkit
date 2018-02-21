context("Version control")

test_that("Dev version increases", {
  expect_output(increaseDevVersion("DESCRIPTION", test = TRUE),
                "Package version updated")
})
