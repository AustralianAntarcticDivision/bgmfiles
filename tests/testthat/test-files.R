context("files are present and sensible")


test_that("files are present", {
  expect_that(bgmfiles(), is_a("character"))
  expect_that(length(bgmfiles()), testthat::is_more_than(1L))
  expect_that(all(file.exists(bgmfiles())), testthat::is_true())
})
