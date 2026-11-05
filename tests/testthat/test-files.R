test_that("files are present", {
  files <- bgmfiles()
  expect_type(files, "character")
  expect_gt(length(files), 1L)
  expect_true(all(file.exists(files)))
})

test_that("pattern filters files", {
  afiles <- bgmfiles(pattern = "^antarc")
  expect_gt(length(afiles), 0L)
  expect_true(all(grepl("^antarc", basename(afiles))))
})
