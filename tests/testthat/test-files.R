expected_files <- c(
  "AEEC_poly_projETRS89_LAEA_snapped0p002.bgm", "ams71.bgm",
  "antarctica_28.bgm", "antarctica_99.bgm", "CalCurrentV3_utm.bgm",
  "Final_CAM_Boxes_8.bgm", "GOM_BGM.bgm", "Guam_utm1.bgm", "JFRE_ll.bgm",
  "JFRE_xy.bgm", "NGOM.bgm", "Nordic02.bgm", "VMPA_setas.bgm"
)

test_that("files are present", {
  files <- bgmfiles()
  expect_type(files, "character")
  expect_gt(length(files), 1L)
  expect_true(all(file.exists(files)))
})

test_that("the expected set of files is installed", {
  expect_identical(sort(basename(bgmfiles())), sort(expected_files))
})

test_that("paths are absolute, unique and end in .bgm", {
  files <- bgmfiles()
  expect_false(anyNA(files))
  expect_false(anyDuplicated(files) > 0L)
  expect_true(all(grepl("\\.bgm$", files)))
  expect_true(all(grepl("^(/|[A-Za-z]:|\\\\\\\\)", files)))
})

test_that("pattern filters files", {
  afiles <- bgmfiles(pattern = "^antarc")
  expect_gt(length(afiles), 0L)
  expect_true(all(grepl("^antarc", basename(afiles))))
})

test_that("pattern edge cases", {
  expect_identical(bgmfiles(pattern = NULL), bgmfiles())
  expect_identical(bgmfiles(pattern = "no-such-file-anywhere"), character(0))
  expect_length(bgmfiles(pattern = "^NGOM\\.bgm$"), 1L)
})

test_that("each file looks like a BGM file", {
  for (f in bgmfiles()) {
    lines <- readLines(f, warn = FALSE)
    expect_gt(length(lines), 0L, label = basename(f))
    for (key in c("nbox", "nface", "projection")) {
      expect_true(any(grepl(paste0("^", key, "\\b"), lines)),
                  label = paste(basename(f), "has", key))
    }
  }
})
