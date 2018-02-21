context("Messages to user")

test_that("User is messaged", {
  expect_equal(messagePhone(message = "test", title = "test")$status, 1)
})
