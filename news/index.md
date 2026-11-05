# Changelog

## bgmfiles (development version)

- removed Travis and AppVeyor configuration; default branch is now
  `main`.

- modernized tests to testthat 3rd edition, with extra checks on the
  installed file set and BGM keywords.

- added a pkgdown site with a Bootstrap 5 theme, deployed from GitHub
  Actions.

- added GitHub Actions R-CMD-check.

- added a Contributor Covenant Code of Conduct.

- DESCRIPTION: single-quoted software name ‘Atlantis’, BGM acronym
  explained, copyright holder role and `Language: en-US` added; added
  `inst/WORDLIST` for the spell checker.

- relicensed the package code under MIT (copyright holder: Department of
  Climate Change, Energy, the Environment and Water); the bundled `.bgm`
  data files keep their original terms, see the README.

## bgmfiles 0.1.0

CRAN release: 2025-09-29

- updated use of testthat, thanks Hadley Wickham.

- added pkgdown site (deployed to gh-pages)

## bgmfiles 0.0.6

CRAN release: 2016-08-10

- added added Final_CAM_Boxes_8.bgm from Thomas Ihde

- updated install notes

## bgmfiles 0.0.5

CRAN release: 2016-07-20

- expanded description and added examples, thanks to CRAN

## bgmfiles 0.0.4

- new file NGOM.bgm from Cameron Ainsworth

- new files JFRE_ll.bgm and JFRE_xy.bgm of the Juan Fernández Ridge
  Ecosystem (JFRE) from Javier Porobic

## bgmfiles 0.0.3

- new file CalCurrentV3_utm.bgm from Isaac Kaplan
- new file Guam_utm1.bgm from Mariska Weijerman

## bgmfiles 0.0.2

- new file AEEC_poly_projETRS89_LAEA_snapped0p002.bgm from Raphaël
  Girardin
- Added a function `bgmfiles` to do the work.
- Added a `NEWS.md` file to track changes to the package.
