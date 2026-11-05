[![R-CMD-check](https://github.com/AustralianAntarcticDivision/bgmfiles/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/AustralianAntarcticDivision/bgmfiles/actions/workflows/R-CMD-check.yaml)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/bgmfiles)](https://cran.r-project.org/package=bgmfiles)

<!-- README.md is generated from README.Rmd. Please edit that file -->

# BGM files for Atlantis

A raw-data package with example .bgm files (box geometry model) for
Atlantis ecosystem model.

Atlantis is a deterministic, biogeochemical, whole-of-ecosystem model:
<https://research.csiro.au/atlantis/>.

**PLEASE NOTE:** this is not an official source of BGM for use in
Atlantis.

See <https://github.com/AustralianAntarcticDivision/rbgm> for an R
package to read these files and work with the box geometry.

See <https://github.com/AustralianAntarcticDivision/box-geometry-models>
for the project that collects the files used in this package.

## Installation

Install from CRAN:

``` r
install.packages("bgmfiles")
```

Install the develop version from Github using `devtools`.

``` r
# install.packages("devtools")
devtools::install_github("AustralianAntarcticDivision/bgmfiles")
```

## Usage

List the available raw files available in this package.

``` r
library(bgmfiles)
files <- bgmfiles()
print(basename(files))
#>  [1] "AEEC_poly_projETRS89_LAEA_snapped0p002.bgm"
#>  [2] "ams71.bgm"                                 
#>  [3] "antarctica_28.bgm"                         
#>  [4] "antarctica_99.bgm"                         
#>  [5] "CalCurrentV3_utm.bgm"                      
#>  [6] "Final_CAM_Boxes_8.bgm"                     
#>  [7] "GOM_BGM.bgm"                               
#>  [8] "Guam_utm1.bgm"                             
#>  [9] "JFRE_ll.bgm"                               
#> [10] "JFRE_xy.bgm"                               
#> [11] "NGOM.bgm"                                  
#> [12] "Nordic02.bgm"                              
#> [13] "VMPA_setas.bgm"
```

If needed filter based on a specific string with the `pattern` argument:

``` r
afiles <- bgmfiles(pattern = "^antarc")
print(basename(afiles))
#> [1] "antarctica_28.bgm" "antarctica_99.bgm"
```

This package exists as a data package to install example files, there is
just one function `bgmfiles` that runs file finding functions:

``` r
list.files(system.file("extdata", package = "bgmfiles"), pattern = NULL, full.names = TRUE, recursive = TRUE)
```

We don’t need to load or attach the package to find these files, but
using the installation mechanism is very convenient for R use.

# Contribute!

If you would like to contribute example BGM files or to the package:

-   contribute to the repository of example files
    <https://github.com/AustralianAntarcticDivision/box-geometry-models>  
-   submit a suggestion or issue for this package
    <https://github.com/AustralianAntarcticDivision/bgmfiles/issues>

or just get in touch directly via email.

## License and data

The code in this package is released under the MIT license; the
copyright holder is the Department of Climate Change, Energy, the
Environment and Water (see `LICENSE`).

The `.bgm` files are not covered by that license. They are example files
that were supplied to this project by various people and are included
**as originally supplied**, without modification. They remain subject to
whatever terms applied to them originally, which are not always known to
us, and the Department makes no claim of copyright over them. If you are
the owner of a file and have concerns about its inclusion, please open
an issue. Earlier versions of this package were released under CC0.

As noted above, these files are not an official source of BGM for use in
Atlantis, and they are provided without warranty. Some files contain
quirks (for example in their projection strings or face counts) that we
have deliberately left in place; see the
[issues](https://github.com/AustralianAntarcticDivision/bgmfiles/issues)
for details.

## Code of Conduct

Please note that the bgmfiles project is released with a [Contributor
Code of
Conduct](https://australianantarcticdivision.github.io/bgmfiles/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
