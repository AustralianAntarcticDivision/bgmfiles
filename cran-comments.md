## Release summary

bgmfiles 0.2.0 (in development; current version 0.1.0.9001)

* Modernized tests (testthat 3rd edition).
* Removed defunct Travis and AppVeyor configuration; added GitHub Actions R-CMD-check.
* Updated links (Atlantis, rbgm) and added a pkgdown site.

## Test environments

* GitHub Actions: macOS, Windows, Ubuntu (devel, release, oldrel-1)

## R CMD check results

0 errors | 0 warnings | 0 notes

## Notes

* BGM is an acronym for "box geometry model", the file format used by the
  'Atlantis' ecosystem model; it is explained in the DESCRIPTION.
* The bundled .bgm files are kept as originally supplied and may contain quirks
  (see the GitHub issues); they are not modified by the package.
