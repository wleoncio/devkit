context("Version control")

version <- as.character(packageVersion("devkit"))
version.length <- nchar(as.character(packageVersion("devkit")))
version.maj.min.pat <- substr(version, 1, version.length - 5)
version.build <- as.numeric(substr(version, version.length - 3, version.length))
version.build.next <- version.build + 1
version.current <- paste(version.maj.min.pat, version.build, sep ="-")
version.next <- paste(version.maj.min.pat, version.build.next, sep ="-")
test_that("Dev version increases", {
  expect_output(increaseDevVersion("../../DESCRIPTION"),
                paste("devkit updated from Version:", version.current,
                       "to Version:", version.next))
})
