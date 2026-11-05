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

- contribute to the repository of example files
  <https://github.com/AustralianAntarcticDivision/box-geometry-models>  
- submit a suggestion or issue for this package
  <https://github.com/AustralianAntarcticDivision/bgmfiles/issues>

or just get in touch directly via email.
